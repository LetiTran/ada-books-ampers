class AddDescriptionToBooks < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :description, :string
    #this means: add_column(:books, :description, :string)
    #add_column(table_name, column_name, data_type, options)
  end
end
