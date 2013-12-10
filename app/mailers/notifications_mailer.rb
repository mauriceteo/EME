class NotificationsMailer < ActionMailer::Base

  default :from => "wlq.yc1119@gmail.com"
  default :to => "eventm1213@gmail.com"

  def new_message(message)
    @message = message
    mail(:subject => "[YourWebsite.tld] #{message.subject}")
  end

end