class CreateLessons < ActiveRecord::Migration
  def self.up
    create_table :lessons do |t|
      t.integer :course_id
      t.date :start_date
      t.date :end_date
      t.integer :lesson_cost
      t.integer :account_id
      t.timestamps
    end
  end

  def self.down
    drop_table :lessons
  end
end
