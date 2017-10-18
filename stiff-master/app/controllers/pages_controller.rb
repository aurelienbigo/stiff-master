class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :thanks ]

  def home
    @guitars = Guitar.all.reject { |guitar| guitar == Guitar.first }
  end

  def collection
    @my_guitars = current_user.guitars
    @liked_guitars = current_user.find_up_voted_items.reject { |guitar| guitar.user == current_user }
  end

  def payment_confirmation
  end

  def dashboard
    @address = Address.new
    @user = current_user
    @orders = Order.where(user_id: current_user)
    @my_guitars = current_user.guitars
  end

  def thanks
  end

  def new_address
    @address = Address.new
  end

  def create_address

  end
end
