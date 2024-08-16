class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(tasks_params)
    if @task.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def tasks_params
    params.require(:task).permit(:description)
  end
end
