class RegistrationsController < Devise::RegistrationsController
  def new
    flash[:notice] = 'Registrations are not open directly, please contact IT - Team for ID genration'
    redirect_to new_user_session_path
  end

  def create
    flash[:notice] = '-Registrations are not open directly, please contact IT - Team for ID genration'
    redirect_to new_user_session_path
  end
end