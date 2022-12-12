class Table < ApplicationRecord
    # self.primary_key = "user_id"
    paginates_per 10
    
    # has_one :company
    # has_one :role
end
