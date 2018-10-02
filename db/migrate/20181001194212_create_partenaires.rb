class CreatePartenaires < ActiveRecord::Migration[5.2]
  def change
    create_table :partenaires do |t|
      t.string :title
    end
  end

end
