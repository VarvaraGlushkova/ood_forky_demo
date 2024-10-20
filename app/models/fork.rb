class Fork < ApplicationRecord
  belongs_to :Story
  belongs_to :Chapter
end
