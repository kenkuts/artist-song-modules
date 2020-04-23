module Findable
    module ClassMethods
        def find_by_name(name)
            self.all.detect{|ar| ar.name == name}
        end
    end
end