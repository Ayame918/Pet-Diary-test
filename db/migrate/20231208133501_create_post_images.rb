class CreatePostImages < ActiveRecord::Migration[6.1]
  
    has_one_attached :image
  
  def change
    create_table :post_images do |t|

      t.timestamps
    end
  end
end
