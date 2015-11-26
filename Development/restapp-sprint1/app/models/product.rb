class Product < ActiveRecord::Base 

  belongs_to :category    

  has_attached_file :picture,   

    styles: { thumb: '100x100>', medium: '300x300>'},   

    default_url: '/images/:style/missing.png' 

  validates_attachment :picture,   

    content_type: { content_type: ['image/jpeg', 'image/png', 'image/gif'] } 

end