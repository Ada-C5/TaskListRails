class PeopleController < ApplicationController

	def index
		@people = Person.all
		@task = Task.all
		@count = Task.group(:person_id).where(completed_at: nil).count
	end

	def show		
		@id = Person.find_by(name: params[:name])
		@people = Task.where(person_id: @id.id)
		@completed = @people.where.not(completed_at: nil)
		@not_completed = @people.where(completed_at: nil)
	end


end
