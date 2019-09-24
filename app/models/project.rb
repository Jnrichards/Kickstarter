class Project < ApplicationRecord
    has_many :pledges 
    has_many :users,  through: :pledges
    belongs_to :user
end
