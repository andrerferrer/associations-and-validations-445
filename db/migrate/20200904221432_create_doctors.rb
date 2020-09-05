class CreateDoctors < ActiveRecord::Migration[5.1]
  def change
    create_table :doctors do |table|
      table.string      :first_name
      table.string      :last_name
      table.string      :email
      table.timestamps
    end
  end
end
