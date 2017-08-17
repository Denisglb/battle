require_relative 'web_helpers'

feature 'Testing infrastructure' do 
	scenario 'can run app and check page content' do 
		visit('/')
		expect(page).to have_content 'Hello Battle!'
	end


	scenario 'A player is able to enter his name' do
		sign_in_and_play
		expect(page).to have_content 'Mcgregor willl be fighting Floyd'
	end


	scenario 'View players hitpoints' do
		sign_in_and_play
		expect(page).to have_content '100 : 100'
		end

end