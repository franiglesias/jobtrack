class CreateApplications < ActiveRecord::Migration[6.0]
  def change
    create_table :applications do |t|
      t.string :company
      t.string :position
      t.string :remote

      t.timestamps
    end
  end
end
