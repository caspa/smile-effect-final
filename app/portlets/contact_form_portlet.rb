class ContactFormPortlet < Portlet
    
  def render
    pmap = flash[instance_name] || params
    @contact_message = ContactMessage.new pmap[:contact_message]
    @contact_message.errors.add_from_hash flash["#{instance_name}_errors"]
    @email_page_portlet_url = pmap[:email_page_portlet_url] || request.request_uri
  end
  
  #----- Handlers --------------------------------------------------------------
  def deliver
    message = ContactMessage.new(params[:contact_message])
    message.recipients = "bruehlandre@googlemail.com, lovetifi@yahoo.fr"
    message.subject = self.subject
    message.body = "#{params[:email_page_portlet_url]}\n\n#{message.body}"    
    if message.save
      url_for_success
    else
      store_params_in_flash
      store_errors_in_flash(message.errors)
      url_for_failure
    end
  end
    
end