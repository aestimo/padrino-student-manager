class CreatePayments < ActiveRecord::Migration
  def self.up
    create_table :payments do |t|
      t.integer :user_id
      t.integer :course_id
      t.date :payment_date
      t.integer :amount
      t.string :receipt_no
      t.timestamps
    end
  end

  def self.down
    drop_table :payments
  end
end
