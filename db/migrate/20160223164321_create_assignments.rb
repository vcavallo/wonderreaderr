class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.text :link
      t.boolean :accepted
      t.string :level

      t.timestamps null: false
    end
  end
end
