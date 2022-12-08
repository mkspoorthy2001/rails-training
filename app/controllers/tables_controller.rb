class TablesController < ApplicationController
    
    
    def index
        # @tables = Table.all
        # @q = Table.ransack(params[:q])

        @tables = Table.order(:country).page params[:page]
        
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

    private

    # def table_params
    #     params.require(:table).permit(comp_id: [])
    # end

end