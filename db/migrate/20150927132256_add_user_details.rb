class AddUserDetails < ActiveRecord::Migration
  def change
    add_column :users, :age, :integer
    add_column :users, :date_of_birth, :date
    add_column :users, :marital_status, :string
    add_column :users, :qualification, :string
    add_column :users, :profile_pic, :string
  end
end
