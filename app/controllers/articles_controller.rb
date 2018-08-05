class ArticlesController < ApplicationController
  layout 'article'

  def show
    @article = Article.friendly.find(params[:slug])
  end
end
