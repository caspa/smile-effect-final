class AddAttributesTocontactMessage < ActiveRecord::Migration
  def self.up
    add_column :contact_messages, :user_name, :string
    add_column :contact_messages, :user_contact, :string
    add_column :contact_messages, :link, :string
  end

  def self.down
    remove_column :contact_messages, :user_name
    remove_column :contact_messages, :user_contact
    remove_column :contact_messages, :link
  end
end
