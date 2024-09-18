class TaskMailer < ApplicationMailer
  default from: 'no-reply@taskmanager.com'

  def create_reminder_notification(user, task)
    @user = user
    @task = task
    mail(to: @user.email, subject: "Task Time line is : #{@task.title}")
  end
end
