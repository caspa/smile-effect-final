class CreateReferences < ActiveRecord::Migration
  def self.up
    create_versioned_table :references do |t|
      t.string :name 
      t.text :body, :size => (64.kilobytes + 1) 
      t.string :path 
      t.string :link 
      t.boolean :marketing 
      t.boolean :web 
      t.boolean :design 
    end
    
    
    ContentType.create!(:name => "Reference", :group_name => "Reference")
  end

  def self.down
    ContentType.delete_all(['name = ?', 'Reference'])
    CategoryType.all(:conditions => ['name = ?', 'Reference']).each(&:destroy)
    drop_table :reference_versions
    drop_table :references
  end
end
