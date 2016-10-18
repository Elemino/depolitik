class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :first
      t.text :last

      t.timestamps null: false
    end
  end
end
