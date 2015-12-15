class AddIndexToBooks < ActiveRecord::Migration
  def change
    add_column(:books, :reading_list_id, :integer)
    add_index :books, :reading_list_id
  end
end
