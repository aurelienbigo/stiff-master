class OrdersController < ApplicationController
  before_action :authenticate_user!

  def show
    @order = Order.find(params[:order_id])
    authorize @order
  end

  def new
    @user = current_user
    @guitar = set_guitar
    @order = Order.new
    authorize @order
  end

  def create
    @guitar = set_guitar
    @order  = Order.new(
      delivery_address: params[:order][:delivery_address],
      delivery_address2: params[:order][:delivery_address2],
      zip_code: params[:order][:zip_code],
      city: params[:order][:city],
      country: params[:order][:country],
      guitar_sku: @guitar.sku,
      price: @guitar.price,
      state: 'pending',
      user_id: current_user.id
      )
    @order.guitar = @guitar

    if @order.save
      Order.update(@order.id, number: "#{@order.created_at.strftime('%y%m%d')}#{@guitar.category.number.to_s}#{@order.id.to_s}")
      redirect_to new_guitar_order_payment_path(order_id: @order.id)
    else
      render :new
    end
    authorize @order
  end

  private

  def set_guitar
    Guitar.find(params[:guitar_id])
  end

end
