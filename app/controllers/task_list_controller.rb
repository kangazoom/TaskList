class TaskListController < ApplicationController

  def index

    @task_list = Task.all
    # @task_list = params # instance var for controller-model communication
  end

  def show
    @task = Task.find(params[:id].to_i)
  end

  def new
    @task= Task.new
  end

  def create
    @task = Task.new(
      name: params[:task][:name],
      description: params[:task][:description],
      completion_date: params[:task][:completion_date]
    )

    is_successful_save = @task.save

    if is_successful_save
      redirect_to tasks_path
    else
      render :new

    end
  end

  def edit
    @task = Task.find(params[:id])
  end

# TODO: dry this up w new?
  def update
  @task = Task.find(params[:id])
  @task.update(
    name: params[:task][:name],
    description: params[:task][:description],
    completion_date: params[:task][:completion_date]
  )

  redirect_to task_path(@task)
  end
end
