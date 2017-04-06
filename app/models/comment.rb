class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :place
    
    validates :comment, length: {in: 5...500, too_long: "500 characters is the maximum allowed", too_short: "This field requires at least 5 characters" }
end
