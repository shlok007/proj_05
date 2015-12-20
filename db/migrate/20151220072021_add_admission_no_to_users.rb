class AddAdmissionNoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :admission_no,:string
  end
end
