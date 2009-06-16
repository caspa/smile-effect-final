class ContactPersonsPortlet < Portlet
    
  def render
    @players = Player.all(:order => "last_name desc")
  end
    
end