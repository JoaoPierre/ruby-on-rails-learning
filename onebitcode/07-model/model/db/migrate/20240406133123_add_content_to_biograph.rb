class AddContentToBiograph < ActiveRecord::Migration[7.1]
  def change
    add_column :biographs, :content, :string
  end
end
