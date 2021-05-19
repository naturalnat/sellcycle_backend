class User < ApplicationRecord
    has_many :listings
    validates :username, presence: true, uniqueness: true 
end

