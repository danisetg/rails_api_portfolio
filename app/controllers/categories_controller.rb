class CategoriesController < ApplicationController
    include Response
    #/categories
    def index
        @categories = Category.where(category_id: nil)
        json_response(@categories)
    end

    def create
        @category = Category.new(category_params)
        if @category.save
            json_response(@category, :created)
        else
            json_response(@category.errors, :unprocessable_entity)
        end
        
    end

    def destroy
        @category = Category.find(params[:id])
        if @category.destroy
            json_response({message: "Category deleted successfully"})
        else
            json_response(@category.errors, :unprocessable_entity)
        end
        
    end

    private
    def category_params
        params.require(:category).permit(:name, :category_id)
    end
end
