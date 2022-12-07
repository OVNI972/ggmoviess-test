class CategoryController < ApplicationController
  before_action :set_category, only: :destroy
  before_action :set_list, only: [:new, :create]

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    @category.list = @list
    if @category.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def destroy
    @category.destroy
    redirect_to list_path(@category.list), status: :see_other
  end

  private

  def category_params
    params.require(:category).permit(:comment, :movie_id)
  end

  def set_bookmark
    @category = Category.find(params[:id])
  end

  def set_list
    @list = List.find(params[:list_id])
  end
end
