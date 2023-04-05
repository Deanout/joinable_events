class Event < ApplicationRecord
    has_many :joinables, dependent: :destroy
    has_many :users, through: :joinables

    has_rich_text :body
end
