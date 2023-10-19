class CreateClassSubjects < ActiveRecord::Migration[7.0]
  def change
    create_table :class_subjects do |t|
      t.integer :user_id
      t.string :code, limit: 30
      t.string :name
      t.string :description

      t.timestamps
    end
    add_index :class_subjects, :code, unique: true
  end
end
