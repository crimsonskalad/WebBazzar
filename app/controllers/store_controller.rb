class StoreController < ApplicationController
  skip_before_action :authorize
  include CurrentCart
  before_action :set_cart
  def index
    @products = Product.order(:title)

    session[:turnstyle] = 0 if session[:turnstyle].nil?
    session[:turnstyle] += 1
    @ticker_count = session[:turnstyle]
  end
end
