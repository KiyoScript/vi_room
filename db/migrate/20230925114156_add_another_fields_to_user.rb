class AddAnotherFieldsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :status, :string
    add_column :users, :phone_number, :string
    add_column :users, :section_program_year, :string
    add_column :users, :role, :string
  end
end
