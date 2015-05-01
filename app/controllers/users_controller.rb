class UsersController < ApplicationController
	before_action    do 
        render_not_admin unless current_user.admin?     
    end

	def index
        @users = User.all.order(created_at: :desc)
    end
    
    private

    def render_not_admin
        render file: "#{Rails.root}/public/not_admin.html"
    end
end
