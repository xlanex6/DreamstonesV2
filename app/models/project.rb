class Project < ApplicationRecord
  has_attachment :photo
  has_attachments :pictures, maximum: 2
  extend FriendlyId
  friendly_id :title, use: :slugged
end
