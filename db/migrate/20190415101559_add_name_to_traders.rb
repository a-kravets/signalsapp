class AddNameToTraders < ActiveRecord::Migration[5.2]
  def change
    add_column :traders, :name, :string
  end
end
