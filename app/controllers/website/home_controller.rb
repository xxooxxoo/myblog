class Website::HomeController < Website::ApplicationController
  layout 'website/application'
  before_action :set_categories
  def index
  end

  def show
    @category = Category.find(params[:id])
  end

  def show_article
    @article = Article.find(params[:id])
  end

  def create_comment
    Comment.create(content: params[:comment][:content], article_id: params[:id])
    redirect_to action: :show_article
  end
end
