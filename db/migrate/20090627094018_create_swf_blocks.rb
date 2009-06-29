class CreateSwfBlocks < ActiveRecord::Migration
  def self.up
    create_versioned_table :swf_blocks do |t|
      t.string :name 
      t.string :size 
      t.string :mode 
      t.string :flashvars 
      t.string :parameters 
      t.text :alternate_html 
      t.string :swf_file_name 
      t.string :swf_content_type 
      t.integer :swf_file_size 
      t.string :xml_content_type 
      t.string :xml_file_name 
      t.integer :xml_file_size 
    end
    
    
    ContentType.create!(:name => "SwfBlock", :group_name => "SwfBlock")
  end

  def self.down
    ContentType.delete_all(['name = ?', 'SwfBlock'])
    CategoryType.all(:conditions => ['name = ?', 'Swf Block']).each(&:destroy)
    drop_table :swf_block_versions
    drop_table :swf_blocks
  end
end
