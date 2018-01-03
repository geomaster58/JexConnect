module PagesHelper
  def image_generator(height:, width:)
    "http://placehold.it/#{height}x#{width}"
  end
  
  def info_img img
  
    if img.model.picture?
      img
    else
      image_generator(height: '600', width: '400' )
     end 
  end

  def connection connections
    "<p>placeholder</p>".html_safe    
  end

end
