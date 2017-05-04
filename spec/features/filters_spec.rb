require 'rails_helper'

RSpec.feature "Filters", type: :feature do
  it 'destroys a Todo item when clicked' do
    visit '/'

    page.fill_in 'new-todo', with: 'Buy milk'
    click_button('add')
    checkbox = find(:css, "#todo_completed[value='#{Todo.last.id}']")
    checkbox.click
    click_button('Update Todo')

    page.fill_in 'new-todo', with: 'Buy cereal'
    click_button('add')

    click_link('Active')
    expect(page).to_not have_text('Buy milk')
  end
end
