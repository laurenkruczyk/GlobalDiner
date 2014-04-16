class UsersController < ApplicationController

  def index
    @users = User.all
  end
end

#  private
#   def user_params
#     params.require(:user).permit(:worldmap_id)
#   end
# end