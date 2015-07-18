require 'spec_helper'

describe User do

	before(:each) do
    	User.class_variable_set(:@@users, [])
  	end

	describe "instance methods" do 
	
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


		it "Save the user instance into the @@users array" do 
			user = User.new
			user.first_name = "Esteban"

			expect(User.count).to eq 0
			user.save
			expect(user.id).to eq 1
			expect(User.count).to eq 1
		end

		it 'remove the user instance from the @@users array' do 
			user = User.new
			user.first_name = "Esteban"
			user.save
			expect(User.count).to eq 1
			user.destroy
			expect(User.count).to eq 0
		end

	end 

	describe 'class methods' do

		it 'return an array with all users' do 
			user = User.new
			user.first_name = "Esteban"
			user.save

			expect(User.all).to eq [user]
		end

		it 'finds the user with te given id' do
			user = User.new
			user.first_name = "Esteban"
			user.save

			user2 = User.new
			user2.first_name = "Esteban2"
			user2.save

			expect(User.find(user2.id)).to eq user2
		end



	end 

end 