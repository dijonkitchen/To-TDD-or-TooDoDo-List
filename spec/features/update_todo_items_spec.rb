require 'rails_helper'

RSpec.feature "UpdateTodoItems", type: :feature do
  it "complete a todo item" do
    visit '/'
    page.fill_in 'new-todo', with: 'Buy milk'
    click_button('add')
    checkbox = find(:css, "#todo_completed[value='#{Todo.last.id}']")
    checkbox.click
    click_button('Update Todo')
    expect(checkbox.checked?).to eq(true)
  end

  it "undo completing a todo item" do
    visit '/'
    page.fill_in 'new-todo', with: 'Buy milk'
    click_button('add')
    checkbox = find(:css, "#todo_completed[value='#{Todo.last.id}']")
    checkbox.click
    click_button('Update Todo')
    checkbox.click
    click_button('Update Todo')
    expect(checkbox.checked?).to eq(false)
  end
end
