class ChangeUserIdToAccountId < ActiveRecord::Migration
  def self.up
      rename_column :payments,:user_id, :account_id
  end

  def self.down
    rename_column :payments,:account_id, :user_id
  end
end
