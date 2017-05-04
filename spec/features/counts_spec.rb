require 'rails_helper'

RSpec.feature "Counts", type: :feature do
  it "shows count of Active todo items" do
    visit '/'
    random_num = rand(26)
    page.fill_in 'new-todo', with: random_num
    click_button('add')
    expect(page).to have_text('1 item left')
  end

  it "shows count of Active todo items" do
    visit '/'

    random_num = rand(26)
    page.fill_in 'new-todo', with: random_num
    click_button('add')

    random_num = rand(26)
    page.fill_in 'new-todo', with: random_num
    click_button('add')

    expect(page).to have_text('2 items left')
  end
end
