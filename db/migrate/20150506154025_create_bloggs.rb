class CreateBloggs < ActiveRecord::Migration
  def change
    create_table :bloggs do |t|
      t.string :title
      t.text :notes

      t.timestamps
    end
  end
end
