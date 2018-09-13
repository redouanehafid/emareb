class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :content
      t.string :client
      t.string :surface
      t.string :lieu

      t.timestamps
    end
  end
end
