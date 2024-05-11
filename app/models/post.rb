class Post < ApplicationRecord

    enum category: { designing: 0, development: 1, mobile: 2 }
    has_one_attached :image

    def self.ransackable_attributes(auth_object = nil)
        ["created_at", "description", "id", "id_value", "title", "updated_at"]
    end

end
