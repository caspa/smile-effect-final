class ContactMailer < ActionMailer::Base
  
  def message(message)
   # @recipients = message.recipients
    #@from = message.sender
   # @subject = message.subject
   # @body = message.body
    #@content_type = message.content_type if message.content_type
    recipients message.recipients
    from message.sender
    subject message.subject
    body :body => message.body, :user_name => message.user_name, :user_contact => message.user_contact
    content_type  message.content_type if message.content_type
    
  end

end