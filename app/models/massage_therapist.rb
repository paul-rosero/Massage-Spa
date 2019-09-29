class MassageTherapist < ActiveRecord::Base
    belongs_to :massage_spa
    has_many :clients

    def slug
        name.downcase.gsub(" ","-")
      end
    
      def self.find_by_slug(slug)
        MassageTherapist.all.find{|user| user.slug == slug}
      end
end
