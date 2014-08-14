class Backend::ArticlesController < ApplicationController
  layout 'backend/application'
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
    @categories = Category.all
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to root_path
    else
      redirect_to action: :new
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :content, :category_id)
  end
end
