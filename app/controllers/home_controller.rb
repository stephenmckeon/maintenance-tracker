class HomeController < ApplicationController
  def index
    @due_tasks = TaskCompletionService.new.due_tasks
  end
end
