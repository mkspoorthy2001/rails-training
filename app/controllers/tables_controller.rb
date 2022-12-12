class TablesController < ApplicationController
    
    
    def index
        # @tables = Table.all
        # @q = Table.ransack(params[:q])

        @tables = Table.order(user_id: :asc).page params[:page]
        # @table = Table.new
        # @t = Table.find(:id)
        # @c = Company.where(:user_id => params[:user_id])
        # @r = Role.where(:user_id => params[:user_id])
        
    end

    def new 
        @table = Table.new
        render :new
    end

    def create
       @table = Table.new(params.require(:table).permit(:company_id, :role_id, :first_name, :last_name, :email, :age,:gender,:country,:user_id))
        # company_id: params[:table][:company_id],
        # role_id: params[:table][:role_id],
        # first_name: params[:table][:first_name],
        # last_name: params[:table][:last_name],
        # email: params[:table][:email],
        # age: params[:table][:age],
        # gender: params[:table][:gender],
        # country: params[:table][:country],
        # user_id: params[:table][:user_id]
       
       if @table.save
        flash[:success] = "New Entry successfully added!"
        redirect_to_root=path
       else
        flash.now[:error] = "New entry failed"
        render :new
       end
    end



    def search
        if params[:search].blank?
            redirect_to search_path and return
        else
            @parameter = params[:search].downcase
            #binding.break
            @tab = Table.all.where("lower(first_name) LIKE :search or lower(country) LIKE :search or lower(last_name) LIKE :search or lower(gender) LIKE :search or lower(email) LIKE :search", search: "%#{@parameter}%")
            @results = @tab.page(params[:page])
        end
    end

    # private

    # def table_params
    #     params.require(:table).permit(comp_id: [])
    # end

end


