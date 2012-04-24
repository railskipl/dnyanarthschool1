class Page < ActiveRecord::Base
  has_attached_file :photo
  before_validation :clear_photo
  
  def delete_photo=(value)
    @delete_photo = !value.to_i.zero?
  end
  
  def delete_photo
    !!@delete_photo
  end
  alias_method :delete_photo?, :delete_photo
  
  def clear_photo
    self.photo = nil if delete_photo?
  end
 
           
 
#  attr_accessor :photo_file_name
   
  # attr_accessor :photo_content_type
  # attr_accessor :photo_file_size
  # attr_accessor :photo_updated_at
end
