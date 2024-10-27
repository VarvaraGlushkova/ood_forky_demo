class Story < ApplicationRecord
  has_many :forks
  has_many :chapters

  mount_uploader :cover, CoverUploader
  # belongs_to :User
end
