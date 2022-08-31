require 'rufus-scheduler'
s = Rufus::Scheduler.singleton
s.every '1d' do
    task = Task.where("duedate <= ?",Time.now)
    if task.present?
      task.each do |task|
          UserMailer.with(user: User.find_by_id(task.user_id),task: task).task_remainder.deliver_now
     end
   end
 end