class SwfFuPortlet < Portlet
    
  def render
   @file = SwfBlock.find(self.swf_block_id)
  end
    
end