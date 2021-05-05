class CreateIps < ActiveRecord::Migration[6.0]
  def change
    create_table :ips do |t|
      t.string :hostname
      t.string :ip_address
      t.string :plug
      t.string :room_id
      t.string :device_id

      t.timestamps
    end
  end
end
