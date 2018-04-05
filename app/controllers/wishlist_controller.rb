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
  @product = Wishlist.new(create_params)
  @product.user = current_user

  respond_to do |format|
    if @product.save
      format.html { redirect_to @product, notice: 'Product was successfully created.' }
      format.json { render :show, status: :created, location: @product }
    else
      format.html { render :new }
      format.json { render json: @product.errors, status: :unprocessable_entity }
    end
  end

  end


  private

  def create_params
    params.permit(:product_id)
  end

end
