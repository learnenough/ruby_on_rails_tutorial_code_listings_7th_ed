class UsersController < ApplicationController
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy]
  .
  .
  .
  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end

    # Before filters

    # Confirms the correct user.
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url), status: :see_other unless current_user?(@user)
    end

    # Confirms an admin user.
    def admin_user
      redirect_to(root_url), status: :see_other unless current_user.admin?
    end
end
