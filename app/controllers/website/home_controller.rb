class Website::HomeController < Website::ApplicationController
  layout 'website/application'
  before_action :set_categories
  def index
  end
  def show
    @category = Category.find(params[:id])
  end
end
