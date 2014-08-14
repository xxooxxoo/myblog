class Backend::CategoriesController < ApplicationController
  layout 'backend/application'
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:notice] = "添加成功"
      redirect_to root_path
    else
      flash[:error] = "添加失败"
      redirect_to action: :new
    end
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
