class Company < ApplicationRecord
    paginates_per 10
    # belongs_to :table#, :foreign_key => "user_id"

    
    
    # def self.search(search)
    # where("tables.first_name LIKE :search OR companies.address LIKE :search ", search: "%#{search.downcase}%" ).uniq
    # end

end
