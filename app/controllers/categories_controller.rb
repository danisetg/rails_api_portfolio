class CategoriesController < ApplicationController
    include Response
    before_action :set_category, only: [:update, :destory]
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
        
        if @category.destroy
            json_response({message: "Category deleted successfully"})
        else
            json_response(@category.errors, :unprocessable_entity)
        end
        
    end

    def update
        if @category.update(category_params)
            json_response(@category)
        else
            json_response(@category.errors, :unprocessable_entity)
        end
    end

    def set_category
        @category = Category.find(params[:id])
    end
    private
    def category_params
        params.require(:category).permit(:name, :category_id)
    end
end
