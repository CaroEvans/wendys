class WishlistController < ApplicationController
  before_action :create_params, only: [:create]

  def new
    @wishlist = Wishlist.new
  end
  #
  # def add
  #   format.html {notice: 'Product was successfully added.' }
  #   format.json { render :show, status: :ok, location: @product }
  # end

  def create
  #  render plain: create_params.inspect
    
  end


  private

  def create_params
    params.permit(:product_id)
  end

end
