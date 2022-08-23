class UsermailerMailer < ApplicationMailer
    def new_task_email
        @task = params[:task]
    
        mail(to: @task.email, subject: "You got a new task!")
      end
end
#username: "alainaanna21@gmail.com"
#password: "jwraorddhwtbmcbq"
#host: "localhost:3000"