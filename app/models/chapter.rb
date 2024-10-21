class Chapter < ApplicationRecord
  has_many :forks
  belongs_to :story
end
