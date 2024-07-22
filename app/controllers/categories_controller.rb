class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def new; end

  def create
    Category.create(
      name: categories_params[:name],
      code:
    )

    redirect_to categories_path
  end

  private

  def code
    categories_params[:name].downcase.gsub(" ", "_")
  end

  def categories_params
    params.require(:category).permit(:name)
  end
end
