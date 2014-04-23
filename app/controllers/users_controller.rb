class UsersController < ApplicationController

  def index
    @users = User.all
  end
end

#  private
#   def user_params
#     params.require(:user).permit(:country_id, :meal_id)
#   end
# end