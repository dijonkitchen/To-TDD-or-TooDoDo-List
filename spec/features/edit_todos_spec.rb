require 'rails_helper'

RSpec.feature "Edit Todos", type: :feature do
  it "can enter and edit a todo item" do
    visit '/'
    page.fill_in 'new-todo', with: 'Learn TDD'
    click_button('add')
    new_text = 'Practice TDD'
    page.fill_in 'todo_description', with: new_text
    click_button('Update Todo')
    expect(page).to have_selector("input[value='#{new_text}']")
  end
end
