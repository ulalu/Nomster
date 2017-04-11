class Place < ApplicationRecord
    belongs_to :user
    has_many :comments
    has_many :photos
    
    geocoded_by :address
    after_validation :geocode
    
    validates :name, length: {minimum: 3, too_short: "Your place name must include at least 3 characters" }
    validates :address, length: {minimum: 10, too_short: "Please include the full address"}
    validates :description, length: {in: 10...500, too_long: "500 characters is the maximum allowed", too_short: "Please include a valid description" }
end
