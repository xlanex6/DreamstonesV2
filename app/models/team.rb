class Team < ApplicationRecord
  has_attachment :photo

  validates :photo, presence: true
  validates :name, presence: true
  validates :team_type,  inclusion: { in: ["Head-Office", "Site-Manager"],
                    message: "%{value} is not a type"},
                    presence: true


end
