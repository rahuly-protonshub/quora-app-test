class Question < ApplicationRecord
	belongs_to :user
	belongs_to :theme
	has_many :answers
end 