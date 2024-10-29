class Chapter < ApplicationRecord
  has_many :forks
  belongs_to :story
  belongs_to :user
end
