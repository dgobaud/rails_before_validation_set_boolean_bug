class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.boolean :reminder_sent, :default => false, :null => false

      t.timestamps null: false
    end
  end
end
