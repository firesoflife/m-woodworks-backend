class Project < ApplicationRecord
  has_one :galleries

  validates :project_name, presence: true
  validates :project_type, presence: true
  validates :description, presence: true
end
