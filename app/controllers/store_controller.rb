class StoreController < ApplicationController

  include CurrentCart
  before_action :set_cart

  def show
    @products = Product.order(:id)
  end

  def index
    @products = Product.order(:id)
  end

  def bestsellery
    @products = Product.order(:id)
  end

  def fentezy
    @products = Product.order(:id)
  end

  def komiksy
    @products = Product.order(:id)
  end

  def obuchenie
    @products = Product.order(:id)
  end

  def biznes
    @products = Product.order(:id)
  end

  def kulinariya
    @products = Product.order(:id)
  end

  def inostrannye_yazuki
    @products = Product.order(:id)
  end

  def poeziya
    @products = Product.order(:id)
  end

  def nauka
    @products = Product.order(:id)
  end

  def number_to_currency(number, options = {})
    options[:locale] ||= I18n.locale
    super(number, options)
  end
end
