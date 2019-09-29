class Client < ActiveRecord::Base
    belongs_to :massage_spa
    has_many :massage_therapists

    def slug
        name.downcase.gsub(" ","-")
      end
    
      def self.find_by_slug(slug)
        Client.all.find{|user| user.slug == slug}
      end

end
