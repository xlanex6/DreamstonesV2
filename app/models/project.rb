class Project < ApplicationRecord
  has_attachment :photo
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :photo
end
