class StaticPagesController < ApplicationController

  def home
  	if signed_in?
      @order  = current_user.orders.build
      @feed_items = current_user.feed.paginate(page: params[:page])
  	end
  end

  def help
  end

  def about
  end
end
