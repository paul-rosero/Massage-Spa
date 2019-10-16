class MassageSpa < ActiveRecord::Base
    has_secure_password
    validates :name, :email, presence: true
    validates :email, uniqueness: true

    has_many :clients

    def slug
        name.downcase.gsub(" ","-")
      end
    
      def self.find_by_slug(slug)
        MassageSpa.all.find{|user| user.slug == slug}
      end
end
