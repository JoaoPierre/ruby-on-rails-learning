class TasksController < ApplicationController
  def index
    @tasks = ["tarefa1", "tarefa2", "tarefa3"]
    render json: {tasks: @tasks}
  end

  def show
    @tasks = ["tarefa1", "tarefa2", "tarefa3"]
    task_id = params[:id].to_i
    @task = @tasks[task_id - 1]
    render json: {task: @task}
  end

  private

  def  find_task(id)
    {id: id , task: "#{id}"}
  end
end
