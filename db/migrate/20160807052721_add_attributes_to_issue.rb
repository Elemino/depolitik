class AddAttributesToIssue < ActiveRecord::Migration
  def change
    add_column :issues, :title, :string
    add_column :issues, :description, :text
  end
end
