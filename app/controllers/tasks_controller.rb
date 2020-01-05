class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def edit
  end

  def create
    task = Task.new(task_params)
    task.save!
    redirect_to tasks_url, notice: "新しいタスク[#{task.name}]を登録したよ"
  end


  private

  def task_params
    params.require(:task).permit(:name, :description)
  end
end
