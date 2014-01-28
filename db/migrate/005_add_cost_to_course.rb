class AddCostToCourse < ActiveRecord::Migration
  def self.up
    change_table :courses do |t|
      t.integer :cost
    end
  end

  def self.down
    change_table :courses do |t|
      t.remove :cost
    end
  end
end
