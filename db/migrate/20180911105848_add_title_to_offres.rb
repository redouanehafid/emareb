class AddTitleToOffres < ActiveRecord::Migration[5.2]
  def change
    add_column :offres, :title, :string
  end
end
