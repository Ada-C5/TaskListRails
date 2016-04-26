class Task < ActiveRecord::Base
  belongs_to :person
  validates :name, :description, presence: true
end
