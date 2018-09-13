class CreateOffres < ActiveRecord::Migration[5.2]
  def change
    create_table :offres do |t|
      t.text :content

      t.timestamps
    end
  end
end
