class Client < ActiveRecord::Base
    belongs_to :massage_spa
    has_many :massage_therapists

end
