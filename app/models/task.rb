class Task < ActiveRecord::Base

  validates :name, :description, presence: true
  validates :label_code, presence: true

    belongs_to :person
end
