class CreateApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :applications do |t|
      t.string :nom
      t.string :prenom
      t.string :adresse
      t.string :codepostal
      t.string :ville
      t.string :telephone
      t.string :email
      t.text :message

      t.timestamps
    end
  end
end
