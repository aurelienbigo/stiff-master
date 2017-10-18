class AddressesController < ActionController::Base

  def new
    @address = Address.new
  end

  def create
    @address = Address.new(address_params)
    @address.user = current_user

    if @address.save
      respond_to do |format|
        format.html { redirect_to dashboard_path(@address) }
        format.js #
      end
    else
      respond_to do |format|
        format.html { render 'pages/dashboard' }
        format.js #
      end
    end
  end

  def edit

  end

  def update
    @address = Address.find(params[:address][:id])
    if @address.update(address_params )
      respond_to do |format|
        format.html { redirect_to dashboard_path(@address) }
        format.js #
      end
    else
      respond_to do |format|
        format.html { render 'pages/dashboard' }
        format.js #
      end
    end
  end

  def update_address_order
    @address = Address.find(params[:address][:id])
    if @address.update(address_params )
      respond_to do |format|
        format.html { redirect_to :back, :notice => "L'adresse à été modifiée" }
        format.js #
      end
    else
      respond_to do |format|
        format.html { render :back, :alert => "Echec de la modification de l'adresse" }
        format.js #
      end
    end
  end

  private

  def address_params
    params.require(:address).permit(:name, :street1, :street2, :zip_code, :city, :country, :main)
  end

  def address_params
    params.require(:address).permit(:name, :street1, :street2, :zip_code, :city, :main)
  end
end
