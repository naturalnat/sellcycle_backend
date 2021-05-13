class Listing < ApplicationRecord
    # belongs_to :user

    validates :imgsrc, presence: true
    validates :brand, presence: true
    validates :year, presence: true
    validates :size, presence: true
    validates :description, presence: true
    validates :title, presence: true 
    
end
