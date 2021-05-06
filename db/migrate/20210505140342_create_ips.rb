class CreateIps < ActiveRecord::Migration[6.0]
  def change
    create_table :ips do |t|
      t.string :hostname
      t.string :ip_address
      t.string :plug
      t.belongs_to :room, foreign_key: true
      t.belongs_to :device, foreign_key: true
      t.belongs_to :operating_system, foreign_key: true

      t.timestamps
    end
  end
end
