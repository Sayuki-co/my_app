class PostDetail < ApplicationRecord
    
    belongs_to :post
    default_scope -> { order('created_at ASC') }
    
    mount_uploader :image, ImageUploader
end
