class Video < ApplicationRecord
  has_one_attached :image
  has_one_attached :clip
end
