class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.boolean :read_status
      t.string :genre

      t.timestamps null: false
    end
  end
end
