FactoryGirl.define do 
	
	factory :comment do
		message "awesome"
		rating "2_stars"
		association :user
		association :place
	end	

	factory :user do
		sequence :email do |n|
			"tester#{n}@example.com"
		end

		password 'testinggg'
	end	

	factory :place do
		name 'Anyname'
		description 'descript'
		address '1600 Pennsylvania Avenue'

		association :user
	end	
end