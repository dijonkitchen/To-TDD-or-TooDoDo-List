require 'rails_helper'

RSpec.feature "Todo List", type: :feature do
  it "can enter and display a new todo item" do
    visit '/'
    random_num = rand(26)
    page.fill_in 'new-todo', with: random_num
    click_button('add')
    expect(page).to have_text(random_num)
  end

  it 'shows latest todo item last' do
    visit '/'
    page.fill_in 'new-todo', with: 'Buy bowls'
    click_button('add')
    page.fill_in 'new-todo', with: 'Buy spoons'
    click_button('add')
    expect(page.body.index('Buy bowls')).to be < page.body.index('Buy spoons')
  end
end
