require_relative 'web_helpers'

feature 'Attacking' do
	scenario 'attack Player 2' do	
		sign_in_and_play
		click_button 'Attack'
		expect(page).to have_content 'Mcgregor has attacked Floyd'
	end
end