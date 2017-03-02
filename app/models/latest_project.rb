class LatestProject < ApplicationRecord
  has_attachment :main_picture
  has_attachments :photos, maximum: 8

  # validates_presence_of :main_picture,
  #                       :photos,
  #                       :title,
  #                       :area,
  #                       :category,
  #                       :size
end
