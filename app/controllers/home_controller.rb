class HomeController < ApplicationController
  def index
    @shirts = Shirt.order(:title)
  end
end
