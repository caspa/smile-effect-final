class ReferenceArchivePortlet < Portlet
    
  def render
  @references = Reference.all(:order => "created_at desc", :limit => self.limit)
  end
    
end