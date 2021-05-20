class UsersController < ApplicationController
  # GET /users
  def index
    @users = User.all

    render json: @users
  end

  # GET /users/1
  def show
     render json: @user
  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  #POST user params to users/login
  def login 
    @user = User.find_by(user_params)

    if @user
      render json: {
        username: @user.username,
        id: @user.id,
        status: 200
          
      }, status: 200
      #@user, :except => [:password, :created_at, :updated_at]

    else
      render json: {
        error: "No such user.",
        status: 400
      }, status: 400
    end
  end


  # # PATCH/PUT /users/1
  # def update
  #   if @user.update(user_params)
  #     render json: @user
  #   else
  #     render json: @user.errors, status: :unprocessable_entity
  #   end
  # end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:username, :password)
    end
end
