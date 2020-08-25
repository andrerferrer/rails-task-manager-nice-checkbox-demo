class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    set_task
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(strong_params)
    @task.save ? redirect_to(@task) : render(:new)
  end

  def complete
    set_task
    @task.completed = true
    @task.save
    
    redirect_to task_path(@task.id)
  end

  def destroy
    set_task
    @task.destroy
    redirect_to tasks_path
  end

  private

  def strong_params
    params.require(:task).permit(*Task::ATTRIBUTES)
  end

  def set_task
    @task = Task.find params[:id]
  end
end
