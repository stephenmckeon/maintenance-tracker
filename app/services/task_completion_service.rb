class TaskCompletionService
  def due_tasks
    Task.includes(:completions).select do |task|
      task.last_completed_at.nil? || task.last_completed_at <= latest_acceptable_completion_date(task)
    end
  end

  private

  def latest_acceptable_completion_date task
    case task.interval
    when "monthly"
      1.month.ago
    when "quarterly"
      3.months.ago
    when "yearly"
      1.year.ago
    else
      0
    end
  end
end
