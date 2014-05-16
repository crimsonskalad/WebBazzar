class StoreController < ApplicationController
  skip_before_action :authorize
  include CurrentCart
  before_action :set_cart
  def index
    if params[:set_locale]
      redirect_to store_url(locale: params[:set_locale])
    else
      @products = Product.order(:title)
    end

    session[:turnstyle] = 0 if session[:turnstyle].nil?
    session[:turnstyle] += 1
    @ticker_count = session[:turnstyle]
  end
end
