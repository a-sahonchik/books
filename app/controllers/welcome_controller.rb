class WelcomeController < ApplicationController
  include CurrentCart
  before_action :set_cart

  def index
    @products = Product.order('created_at').limit(10)
  end
end
