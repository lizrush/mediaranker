class AddAllModels < ActiveRecord::Migration
  
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.text :description
      t.integer :upvotes

      t.timestamps
    end

    create_table :movies do |t|
      t.string :title
      t.string :director
      t.text :description
      t.integer :upvotes

      t.timestamps
    end

     create_table :albums do |t|
      t.string :title
      t.string :artist
      t.text :description
      t.integer :upvotes

      t.timestamps
    end
  end
end
