class RegistrationsController < Devise::RegistrationsController

  def edit
    @user = current_user
  end

  def update
    @user.update(user_params)
    @user.save
      respond_to do |format|
        format.html { redirect_to dashboard_path }
        format.js #
      end
  end

  private

  def update_resource(resource, params)
    resource.update_without_password(params)
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :phone, :address)
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

end
