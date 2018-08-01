class HomeController < ApplicationController
  def index
    @events = Event.order('date desc').take(3)
    @videos = Video.order('created_at desc').take(3)
    @articles = Article.order('created_at desc').take(6)
  end
end
