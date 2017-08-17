require 'spec_helper.rb'

def sign_in_and_play
	visit('/')
		fill_in :boxer1, with: 'Mcgregor'
		fill_in :boxer2, with: 'Floyd'
		click_button 'fight'
	end