class PeopleController < ApplicationController

	def index
		@person = Person.all(params[:id])
	end

	def new
		@person = Person.new(params[:person])
	end

	def create
		@person = Person.new(params[:id])
		if @person.save
			redirect_to people_url, notice: "Successfully Added a Person"
		else
			redirect_to new_person_url, notice: "Please Try Again"
	end

	def update

	end

end
