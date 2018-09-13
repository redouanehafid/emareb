class AddAtributesToApplications < ActiveRecord::Migration[5.2]
  	def up
    add_attachment :applications, :cv
    add_attachment :applications, :lettre
  end

  def down
    remove_attachment :applications, :cv
    remove_attachment :applications, :lettre
  end
end
