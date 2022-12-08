class Table < ApplicationRecord
    
    paginates_per 10
    # has_one :companies
    # has_one :roles
end
