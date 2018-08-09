class ArticlesController < ApplicationController
  layout 'article'

  def index
    @articles = Article.paginate(page: params[:page]).order('created_at DESC')
  end

  def show
    @article = Article.friendly.find(params[:slug])
  end
end
