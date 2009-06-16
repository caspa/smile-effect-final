class CreatePlayers < ActiveRecord::Migration
  def self.up
    create_versioned_table :players do |t|
      t.string :last_name 
      t.string :first_name 
      t.string :tel 
      t.string :fax 
      t.string :mobile 
      t.string :email 
      t.string :homepage 
      t.string :image_path 
      t.string :street 
      t.string :zip_code 
      t.string :city 
    end
    
    
    ContentType.create!(:name => "Player", :group_name => "Player")
  end

  def self.down
    ContentType.delete_all(['name = ?', 'Player'])
    CategoryType.all(:conditions => ['name = ?', 'Player']).each(&:destroy)
    drop_table :player_versions
    drop_table :players
  end
end
