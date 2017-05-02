require 'rails_helper'

RSpec.feature "Destroy Items", type: :feature do
  it 'destroys a Todo item when clicked' do
    visit '/'
    page.fill_in 'new-todo', with: 'Buy milk'
    click_button('add')
    click_button('Destroy')
    expect(page).to_not have_text('Buy milk')
  end
end
