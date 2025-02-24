class Users::RegistrationsController < Devise::RegistrationsController
  before_action :authenticate_user!

  def edit
    
    super
  end

  def update
    super
  end
end
