class Restaurant < ActiveRecord::Base
    has_many :bartenders
    has_many :cocktails, through: :bartenders
end