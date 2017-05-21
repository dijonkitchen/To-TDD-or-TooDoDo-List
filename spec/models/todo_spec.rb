require 'rails_helper'

RSpec.describe Todo, type: :model do
  it 'has a todo item' do
    item = Todo.new
    expect(item).to be_an_instance_of(Todo)
  end

  it 'item has a description' do
    item = Todo.new(description: "Hello first todo item!")
    expect(item.description).to eq("Hello first todo item!")
  end

  it "doesn't add items with an empty description" do
    item = Todo.new(description: '')
    expect(item.save).to eq(false)
  end

  it 'defaults to not completed' do
    item = Todo.new(description: "Should not be completed yet!")
    expect(item.completed?).to eq(false)
  end

  it 'defaults to not completed' do
    item = Todo.new(description: "Complete soon")
    item.completed = true
    expect(item.completed?).to eq(true)
  end
end
