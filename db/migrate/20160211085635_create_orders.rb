class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :order_date
      t.string  :name
      t.integer :number
      t.string   :email
      t.text     :address
      t.string   :pay_type

      t.timestamps null: false
    end
  end
end
