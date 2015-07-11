require 'spec_helper'

describe User do
	it "sets the first name" do
		user = User.new
		user.first_name = "Esteban"

		expect(user.first_name).to eq "Esteban"
	end


	it "sets the last name" do
		user = User.new
		user.last_name = "Piedra"

		expect(user.last_name).to eq "Piedra"
	end


	it "sets the age" do
		user = User.new
		user.age = 21

		expect(user.age).to eq 21
	end



end 