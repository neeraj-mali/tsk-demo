class Task < ApplicationRecord
  belongs_to :user

  enum status: { backlog: "Backlog", in_progress: "In-Progress", done: "Done" }

  # def self.reminder
  #   tasks = Task.where(time_limit: "#{1.day.from_now}).where(status: :backlog)
  #   tasks.each do |task|
  #     TaskMailer.with(task: task).deadline_alert(task.user.email, task).deliver_later
  #   end
  # end
end
