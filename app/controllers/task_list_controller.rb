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
    @task = Task.new(task_params)

    is_successful_save = @task.save

    if is_successful_save
      redirect_to tasks_path
    else
      render :new

    end
  end

  def edit
    @task = Task.find_by(id: params[:id])

    if !@task
      return raise ActiveRecord::RecordNotFound, 'Record not found - cannot edit'
    end

    #TODO: add strong params; book_params
  end

  # TODO: dry this up w new?
  def update
    @task = Task.find(params[:id])

      @task.update(task_params)

      redirect_to task_path(@task)

    # TODO: after strong params (task.id)
  end

  def destroy
    @task = Task.find_by(id: params[:id])

    if @task
      @task.destroy
      redirect_to tasks_path
    else
      return raise ActiveRecord::RecordNotFound, 'Record not found - cannot delete'
    end
  end


# QUESTION: maybe you can call update in the complete/incomplete

    def complete
      @task = Task.find(params[:id].to_i)
      # @task.completed = true
      # @task.completion_date = Date.today
      @task.update(completed: true, completion_date: Date.today)
      # @task.save

      redirect_to tasks_path
    end

    # def incomplete
    #   @task = Task.find(params[:id])
    #   @task.completed = false
    #   # @task.completion_date = Date.tomorrow
    #   @task.update
    #
    #   redirect_to tasks_path
    # end


    private

    def task_params
    	return params.require(:task).permit(
    		:name,
    		:description,
    		:completion_date
    		)
    end



end
