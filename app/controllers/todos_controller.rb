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

  def update
    @todo = Todo.find_by(id: params[:id])
    if @todo.update(todo_params)
      redirect_to '/'
    else
      render @todo.errors.full_messages
    end
  end

  private

  def todo_params
    params.require(:todo).permit(:completed, :description)
  end
end
