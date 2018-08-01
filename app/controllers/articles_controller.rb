class ArticlesController < ApplicationController
  def show
    @article = Article.friendly.find(params[:slug])
  end
end
