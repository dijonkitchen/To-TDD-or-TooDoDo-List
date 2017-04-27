class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def create
    @todo = Todo.new(description: params[:'new-todo'])
    if @todo.save
      redirect_to '/'
    else
      render @todo.errors.full_messages
    end
  end
end
