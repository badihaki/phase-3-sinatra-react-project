class Bartender < ActiveRecord::Base
    has_many :cocktails
    belongs_to :restaurant
end