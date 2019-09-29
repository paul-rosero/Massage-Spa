class MassageTherapist < ActiveRecord::Base
    belongs_to :massage_spa
    has_many :clients
    
end
