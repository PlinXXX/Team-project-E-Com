class ConfirmationController < ApplicationController
  def index
  end

  def create
  end

  def update
    @confirmation = Confirmation.where(status: false).last

    unless account_not_validate
      @confirmation.update(status: true)
    end

    redirect_to '/users/sign_in'
  end

  private
  def account_not_validate
    params[:confirmation_code] != @confirmation.confirmation_code
  end
end
