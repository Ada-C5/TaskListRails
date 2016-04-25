class Task < ActiveRecord::Base
	belongs_to :person

	def init
		self.bool_field = false if self.bool_field.nil?
  end
end
