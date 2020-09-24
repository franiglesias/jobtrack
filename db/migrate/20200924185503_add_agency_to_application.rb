class AddAgencyToApplication < ActiveRecord::Migration[6.0]
  def change
    add_column :applications, :agency, :boolean
  end
end
