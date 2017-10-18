class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  include Pundit

  # Pundit: white-list approach.
  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  def user_not_authorized
    flash[:alert] = "Vous n'êtes pas autorisé à faire cette action."
    redirect_to(root_path)
  end
  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end

  protected

  # def authenticate_user!
  #   if user_signed_in?
  #     super
  #   else
  #     respond_to do |format|
  #       format.html {redirect_to new_user_session_path, :notice => 'You need to login before'}
  #       format.js {render :js => "window.location.href='#{new_user_session_path}'"
  #     end

  #     ## if you want render 404 page
  #     ## render :file => File.join(Rails.root, 'public/404'), :formats => [:html], :status => 404, :layout => false
  #   end
  # end

  def default_url_options
  { host: ENV['HOST'] || 'localhost:3000' }
  end

end
