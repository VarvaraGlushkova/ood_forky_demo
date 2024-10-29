class Story < ApplicationRecord
  has_many :forks
  has_many :chapters
  belongs_to :user

  validates :title, presence: true

  mount_uploader :cover, CoverUploader
  # belongs_to :User
end
