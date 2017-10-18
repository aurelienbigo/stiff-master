class GuitarsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create, :index, :show, :edit, :compute_price]
  before_action :set_guitar, only: [ :show, :edit, :update, :like]
  before_action :set_default_guitar

  def index
    @guitars = policy_scope(Guitar.all)
    authorize @guitars
  end

  def new
    @guitar = @default_guitar.dup # duplicates the default guitar
    @guitar.price = get_price(@guitar)
    authorize @guitar
  end

  def create
    @guitar = Guitar.new(guitar_params)
    @guitar.price = get_price(@guitar)

    if current_user
      # set_user
      # @guitar.user = @user
      @guitar.user = current_user
    else
      @guitar.user = User.first
    end

    if @guitar.save
      respond_to do |format|
        format.html { redirect_to guitar_path(@guitar) }
        format.js #
      end
    else
      respond_to do |format|
        format.html { render :new }
        format.js #
      end
    end
    authorize @guitar
  end

  def show
    authorize @guitar
  end

  def edit
    authorize @guitar
  end

  def update
    @guitar = @guitar.dup
    @guitar.assign_attributes(guitar_params)
    @guitar.price = get_price(@guitar)
    @guitar.save
    redirect_to guitar_path(@guitar)
    authorize @guitar
  end

  # def like
  #   if current_user.voted_up_on? @guitar
  #     @guitar.unliked_by current_user
  #   else
  #     @guitar.liked_by current_user
  #   end
  #   respond_to do |format|
  #     format.html { redirect_to guitar_path(@guitar) }
  #     format.js # <-- will render `app/views/guitars/like.js.erb`
  #   end
  # end

  def compute_price
    @guitar = Guitar.new(guitar_params)
    @guitar.price = get_price(@guitar)
  end

  private

  def set_default_guitar
     @default_guitar = Guitar.first
  end

  def get_price(guitar)
    @default_guitar.price +
      guitar.category.price +
      guitar.body_wood.price +
      guitar.fret_wood.price +
      guitar.pickguard.price
      # guitar.shape.price !!! PENSER A METTRE LE + EN BOUT DE LIGNE ET NON EN DEBUT
      # + guitar.finish.price
      # + guitar.head_shape.price
      # + guitar.neck_wood.price
      # + guitar.pickup.price
  end

  def guitar_params
    params.require(:guitar).permit(
      :name,
      :description,
      :body_wood_id,
      :user_id,
      :shape_id,
      :dexterity_id,
      :pickguard_id,
      :color_id,
      :finish_id,
      :category_id,
      :neck_wood_id,
      :fret_wood_id,
      :head_shape_id,
      :pickup_id
    )
  end

  def set_guitar
    @guitar = Guitar.find(params[:id])
  end

  # def set_user
  #   @user = User.find(params[:user_id])
  # end
end
