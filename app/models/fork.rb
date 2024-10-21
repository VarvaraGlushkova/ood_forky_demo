class Fork < ApplicationRecord
  belongs_to :story
  belongs_to :chapter
end
