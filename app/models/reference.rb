class Reference < ActiveRecord::Base
  acts_as_content_block
  has_attached_file :photo,
      :styles => {
        :thumb=> "320x250#",
        :small  => "150x150>" }
  
  

end
