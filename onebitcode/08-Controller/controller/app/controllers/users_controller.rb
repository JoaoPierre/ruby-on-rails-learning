class UsersController < ApplicationController
  def show
    user_id = params[:id]
    @user = find_user(user_id)
    render json:{user: @user}
  end

  private

  def find_user(id)
    {id: id, name: "Usuario #{id}"}
  end
end
