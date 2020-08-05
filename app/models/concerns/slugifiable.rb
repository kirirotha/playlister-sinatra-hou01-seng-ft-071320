require 'active_support/core_ext'

module Slugifiable
    module InstanceMethods
        def slug
            name = self.name.downcase.split(" ").join("-")
        end
    end
    module ClassMethods
        def self.find_by_slug(slug)
            name = slug.split("-").join(" ").titleize
            instance = self.all.find_by(name)
            instance
        end
    end
end
