class MassageSpa < ActiveRecord::Base
    has_secure_password
    validates :username, presence: true, uniqueness: true

    has_many :massage_therapist
    has_many :clients

end
