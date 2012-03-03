class Student::StudentsController < ApplicationController
	def student_registration
		@user = User.new
		@personnel_information= PersonelInformation.new
		@temp_address = @personnel_information.addresses.find_by_address_type("temp")
		@temp_address = Address.new if @temp_address.nil?
		@temp_address.address_type = "temp"
		@permanent_address = @personnel_information.addresses.find_by_address_type("perm")
		@permanent_address = Address.new if @permanent_address.nil?
		@permanent_address.address_type = "perm"
	end

	def save_student_registration
		puts "+++++++++++++++++++++++++++++++++++++save student registration"
		puts params.inspect
		erejkl
	end

	def load_states
		puts "****************************************"
		puts params.inspect
		states = []
		params[:country]
		State.find_by_country_id(params[:country]).all.collect {|c| states << [c.name,c.id]}
		return states
	end
end
