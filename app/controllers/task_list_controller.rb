TASK_LIST = [
  { day: "Monday", number: "2"},
  { day: "Tuesday", number: "3"},
  { day: "Wednesday", number: "4"}
]


class TaskListController < ApplicationController

  def index
    @task_list = TASK_LIST # instance var for controller-model communication
  end

  def show
    task_id = params[:id].to_i #<-- always comes in as a string
    @task = TASK_LIST[task_id]
  end

end
