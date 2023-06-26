class UsersController < ApplicationController

  def edit
  end

  def update
    current_user.update(user_params)
  end

  private

  def user_params
    params.require(:user).parmit(:name,:email)
    redirect_to root_path
  else
    render :edit, status: :unprocessable_entity
  end
end
