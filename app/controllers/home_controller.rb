class HomeController < ApplicationController
  def index
    @events = Event.where('created_at >= ?', Date.current).order('date desc')
    @events = Event.order('date desc').take(3) if @events.count.zero?

    @videos = Video.order('created_at desc').take(3)
    @articles = Article.order('created_at desc').take(6)
  end
end
