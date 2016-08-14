class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :title
      t.text :description
      t.references :issue, index: true

      t.timestamps null: false
    end
    add_foreign_key :subjects, :issues
  end
end
