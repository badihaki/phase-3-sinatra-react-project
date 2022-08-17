class Bartender < ActiveRecord::Base
    belongs_to :restaurant
    has_many :cocktails
end