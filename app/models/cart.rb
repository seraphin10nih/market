class Cart < ApplicationRecord
    has_many :line_items, dependent: :destroy
    def add_shirt(shirt)
        item = line_items.find_by(shirt: shirt)
      
        if item
          item.quantity += 1
        else
          item = line_items.new(shirt: shirt)
        end
      
        item
      end
      

end
