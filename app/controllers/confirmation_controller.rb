class ConfirmationController < ApplicationController
  def new
    @confirmation = Confirmation.new
  end
  
  def create
    @confirmations = Confirmation.where(email: session[:temp_email]).all

    respond_to do |format|
      if code_is_valid
        User.where(email: session[:temp_email]).first.update(is_validate: true)
        session.delete(:temp_email)
        format.html{
          redirect_to '/users/sign_in', notice: "Your account as been validate"
        }
      else
        format.html{
          render :new, alert: "This code is invalid, please check your email"
        }
      end
    end
  end

  private
  def code_is_valid
    @confirmations.each do |confirmation|
      return true if confirmation.confirmation_code == params[:confirmation_code]
    end
    return false
  end
end
