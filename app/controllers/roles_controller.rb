class RolesController < ApplicationController

    def index2
        # @roles = Role.all
        @roles = Role.order(:user_id).page params[:page]
    
        
     end
    
    end