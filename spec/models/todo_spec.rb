require 'rails_helper'

RSpec.describe Todo, type: :model do
  it 'has a todo item' do
    item = Todo.new
    expect(item).to be_an_instance_of(Todo)
  end

  it 'todo item has a description' do
    item = Todo.new(description: "Hello first todo item!")
    expect(item.description).to be("Hello first todo item!")
  end
end
