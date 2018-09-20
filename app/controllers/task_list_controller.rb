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
      name: params[:name],
      description: params[:description],
      completion_date: params[:completion_date]
    )

    is_successful_save = @task.save

    if is_successful_save
      redirect_to task_list_path
    else
      render :new

    end


  end
end
