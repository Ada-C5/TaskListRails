class Person < ActiveRecord::Base
  has_many :tasks
  validates_presence_of :name

  def self.by_name 
    order(:name)
  end

  def self.search(search)
    if search
      search = search.gsub(/[^A-Za-z]/, '')
      where("name LIKE ?", "%#{search}%")
    else
      order(name: :asc)
    end
  end

end
