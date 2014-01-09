class AddDefaultToUpvotes < ActiveRecord::Migration
  def change
  	change_column :movies, :upvotes, :integer, :default => 0
    change_column :books, :upvotes, :integer, :default => 0
    change_column :albums, :upvotes, :integer, :default => 0
  end
end
