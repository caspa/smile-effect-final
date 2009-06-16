class ContactMessage < ActiveRecord::Base
  
  named_scope :undelivered, :conditions => "delivered_at is null"
  

    validate do |message2|
        message2.errors.add_to_base("Um Kontakt mit ihnen aufzunehmen brauchen wir eine Emailadresse oder Ihre Telefonnummer.") if message2.user_contact.blank?
      end
  
  
  
  after_create :deliver_now
  
  def delivered?
    !!delivered_at
  end
  
  def self.deliver!
    # Send all messages, 100 at a time
    undelivered.all(:limit => 100).each do |m|
      m.deliver!
    end
  end
  
  #TODO: Take this out when we have an email queue processor
  def deliver_now
    deliver!
  end
  
  def deliver!
    return false if delivered?
    ContactMailer.deliver_message(self)
    update_attributes(:delivered_at => Time.now)
  end
  
end
