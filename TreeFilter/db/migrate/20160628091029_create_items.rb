class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :parentId
      t.integer :myId
      t.text :text

      t.timestamps null: false
    end
  end
end
