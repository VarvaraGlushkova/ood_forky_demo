class Chapter < ApplicationRecord
  has_many :Forks
  belongs_to :Story
end
