class PaymentsController < ApplicationController
  before_action :set_order

  def new
    @guitar = Guitar.find(params[:guitar_id])
    @order = find_order
    authorize @order
  end

  def create
    @order = find_order
    # Price in cents
    price = Guitar.find(params[:guitar_id]).price_cents

    # Create the customer in Stripe
    customer = Stripe::Customer.create(
        source: params[:stripeToken],
        email:  params[:stripeEmail]
    )

    # Create the charge using the customer data returned by Stripe API
    payment = Stripe::Charge.create(
      customer: customer.id,
      amount: price,
      description: 'Rails Stripe customer',
      currency: 'eur'
    )

    @order.update(
      card_brand: customer.sources.data[0].brand,
      card_country: customer.sources.data[0].country,
      card_exp_m: customer.sources.data[0].exp_month,
      card_exp_y: customer.sources.data[0].exp_year,
      card_last: customer.sources.data[0].last4
      )
    redirect_to payment_confirmation_path
    # place more code upon successfully creating the charge
    # rescue Stripe::CardError => e
    #   flash[:error] = e.message
    #   redirect_to charges_path
    #   flash[:notice] = "Please try again"
    authorize @order
  end

  private

  def set_order
    @order = Order.where(state: 'pending').find(params[:order_id])
  end

  def find_order
    @order = Order.find(params[:order_id])
  end
end
