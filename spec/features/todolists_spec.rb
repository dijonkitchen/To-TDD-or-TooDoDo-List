require 'rails_helper'

RSpec.feature "Todo List", type: :feature do
  it "enters and displays a new todo item" do
    visit '/'
    page.fill_in 'new-todo', with: 'Buy milk'
    click_button('add')
    expect(page).to have_text('Buy milk')
  end

  it "enters and displays a new todo item" do
    visit '/'
    page.fill_in 'new-todo', with: 'Buy cereal'
    click_button('add')
    expect(page).to have_text('Buy cereal')
  end
end
