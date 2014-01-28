class CreateLessonPayments < ActiveRecord::Migration
  def self.up
    create_table :lesson_payments do |t|
      t.integer :lesson_id
      t.integer :payment_id
      t.timestamps
    end
  end

  def self.down
    drop_table :lesson_payments
  end
end
