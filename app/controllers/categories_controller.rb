class CategoriesController < ApplicationController
    include Response
    #/categories
    def index
        @categories = Category.all
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

    private
    def category_params
        params.require(:category).permit(:name, :category_id)
    end
end
