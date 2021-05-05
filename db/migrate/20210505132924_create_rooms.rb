class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.belongs_to :sector, foreign_key: true
      t.string :name
      t.string :number

      t.timestamps
    end
  end
end
