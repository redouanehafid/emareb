class AddImageToPartenaires < ActiveRecord::Migration[5.2]
  
   def up
    add_attachment :partenaires, :image
  end

  def down
    remove_attachment :partenaires, :image
  end
end
