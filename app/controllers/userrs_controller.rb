class UserrsController < ApplicationController
  def index
    userrs = Userr.all
    if userrs
      render json: {status: "SUCCESS", message: "All users ready", data: userrs}, status: :ok
    else
      render json: userrs.errors, status: :bad_request
    end
  end

  def create
    userr = User.create(userr_param)
    render json: userr
  end

  def update
    userr = Userr.find(params[:id])
    userr.update(userr_param)
    render json: userr
  end

  def destroy
    userr = Userr.find(params[:id])
    userr.destroy
    head :no_content, status: :ok
  end

  private
  def userr_param
    params.require(:user).permit(:name, :email, :isadmin)
  end

end
