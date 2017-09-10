require 'spec_helper'

feature 'User creates a new Charity' do
  scenario 'with a name, description and account number' do
    vist charities_new_path
    fill_in 'Charity Name', with: name
    fill_in 'Description', with: description
    fill_in 'Account No.', with: account_number
    click_button 'Create'
    expect(page).to have_content("Charity created")
  end
end