class Task < ActiveRecord::Base

  def self.search(search)
    if search
      search = search.gsub(/[^A-Za-z0-9]/, '')
      where("title LIKE ? OR description LIKE ?", "%#{search}%", "%#{search}%")
    else
      order(completed_at: :asc)
    end
  end

end

