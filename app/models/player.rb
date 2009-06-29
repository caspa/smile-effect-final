class Player < ActiveRecord::Base
  acts_as_content_block
  has_attached_file :photo,
       :styles => {
         :thumb=> "83x63#",
         :small  => "150x150>" }
  

end
