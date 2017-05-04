require 'rails_helper'

RSpec.feature "Filters", type: :feature do
  it 'shows filtered completed items' do
    visit '/'

    page.fill_in 'new-todo', with: 'Buy milk'
    click_button('add')
    checkbox = find(:css, "#todo_completed[value='#{Todo.last.id}']")
    checkbox.click
    click_button('Update Todo')

    page.fill_in 'new-todo', with: 'Buy cereal'
    click_button('add')

    click_link('Completed')
    expect(page).to have_selector("input[value='Buy milk']")
    expect(page).to_not have_selector("input[value='Buy cereal']")
  end

  it 'shows filtered active items' do
    visit '/'

    page.fill_in 'new-todo', with: 'Buy milk'
    click_button('add')
    checkbox = find(:css, "#todo_completed[value='#{Todo.last.id}']")
    checkbox.click
    click_button('Update Todo')

    page.fill_in 'new-todo', with: 'Buy cereal'
    click_button('add')

    click_link('Active')
    expect(page).to_not have_selector("input[value='Buy milk']")
    expect(page).to have_selector("input[value='Buy cereal']")
  end

  it 'shows all items' do
    visit '/'

    page.fill_in 'new-todo', with: 'Buy milk'
    click_button('add')
    checkbox = find(:css, "#todo_completed[value='#{Todo.last.id}']")
    checkbox.click
    click_button('Update Todo')

    page.fill_in 'new-todo', with: 'Buy cereal'
    click_button('add')

    click_link('All')
    expect(page).to have_selector("input[value='Buy milk']")
    expect(page).to have_selector("input[value='Buy cereal']")
  end
end
