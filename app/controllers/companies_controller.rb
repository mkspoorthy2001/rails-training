class CompaniesController < ApplicationController

def index1
    # @companies = Company.all
    @companies = Company.order(:comp_id).page params[:page]

    
 end

end