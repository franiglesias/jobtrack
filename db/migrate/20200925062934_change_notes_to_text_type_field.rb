class ChangeNotesToTextTypeField < ActiveRecord::Migration[6.0]
  def change
    change_column :events, :notes, :text
    add_column :applications, :notes, :text
  end
end
