class SwfBlock < ActiveRecord::Base
  acts_as_content_block
  has_attached_file :swf, :url  => "/swfs/:style_:basename.:extension",
   :path => ":rails_root/public/swfs/:style_:basename.:extension"
  has_attached_file :xml , :url  => "/swfs/:class/:style_:basename.:extension",
    :path => ":rails_root/public/swfs/:class/:style_:basename.:extension"

end
