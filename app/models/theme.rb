class Theme < ApplicationRecord

has_many :questions
has_many :follows, as: :followable
  
end
