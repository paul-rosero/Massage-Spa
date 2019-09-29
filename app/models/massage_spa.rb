class MassageSpa < ActiveRecord::Base
    has_secure_password
    validates :username, presence: true, uniqueness: true

    has_many :massage_therapist
    has_many :clients

    def slug
        username.downcase.gsub(" ","-")
      end
    
      def self.find_by_slug(slug)
        MassageSpa.all.find{|user| user.slug == slug}
      end
end
