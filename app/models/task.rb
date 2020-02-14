class Task < ApplicationRecord
    has_many :todos
    has_many :users, through: :todos

    validates :name, presence: true
    validates :picture, presence: true
end
