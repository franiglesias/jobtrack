class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :event
      t.date :date
      t.string :notes
      t.references :application, null: false, foreign_key: true

      t.timestamps
    end
  end
end
