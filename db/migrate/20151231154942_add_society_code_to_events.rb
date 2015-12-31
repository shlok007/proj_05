class AddSocietyCodeToEvents < ActiveRecord::Migration
  def change
    add_column :events, :society_code, :string
  end
end
