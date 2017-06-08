class Project < ApplicationRecord
  has_attachment :photo
  has_attachments :pictures, maximum: 2
  extend FriendlyId
  friendly_id :title, use: :slugged

  scope :only_renovation, -> { where "renovation = ?", true }
  scope :only_new_build, -> { where "new_buid = ?", true }

end
