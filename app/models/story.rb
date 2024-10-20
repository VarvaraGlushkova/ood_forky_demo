class Story < ApplicationRecord
  has_many :Forks
  has_many :Chapters
  # belongs_to :User
end
