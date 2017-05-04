class TodosController < ApplicationController
  def index
    if params[:completed]
      @todos = Todo.where(completed: params[:completed]).order(:created_at)
    else
      @todos = Todo.all.order(:created_at)
    end
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

  def destroy
    @todo = Todo.find_by(id: params[:id])
    if @todo.destroy
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
