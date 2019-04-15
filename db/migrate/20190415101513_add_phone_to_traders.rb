class AddPhoneToTraders < ActiveRecord::Migration[5.2]
  def change
    add_column :traders, :phone, :string
  end
end
