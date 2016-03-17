module ApplicationHelper

    def list_categories
      Category.all
    end

    def ad_available
      Ad.first
    end
end
