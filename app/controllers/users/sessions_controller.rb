class Users::RegistrationsController < Devise::RegistrationsController
  def new
    redirect_to root_path, notice: 'Registrations Disabled'
  end
end