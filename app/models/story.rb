class Story < ApplicationRecord
  has_many :forks
  has_many :chapters
  # belongs_to :User
end
