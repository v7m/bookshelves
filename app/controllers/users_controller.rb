class UsersController < ApplicationController
  before_action :get_user, only: [:edit, :update]
  before_action do 
    render_not_admin unless current_user.admin?     
  end

  def index
    @users = User.all.order(created_at: :desc)
  end

  def edit
  end

  def update
    if @user.update(user_params)
      flash[:notice] = 'User successfully updated!'
      redirect_to users_path
    else
      render action: 'edit'
    end 
  end  
    
  private

    def render_not_admin
      render file: "#{Rails.root}/public/not_admin.html"
    end
    def get_user
      @user = User.find(params[:id])
    end  
    def user_params
      params.require(:user).permit(:username)
    end  
end
