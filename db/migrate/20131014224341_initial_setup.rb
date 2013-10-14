class InitialSetup < ActiveRecord::Migration
  def up
    create_table :subreddits do |t|
      t.string :name
      t.timestamps
    end
    create_table :submissions do |t|
      t.string :title
      t.string :url
      t.text :body
      t.integer :up_votes
      t.integer :down_votes
      t.timestamps
    end
    create_table :comments do |t|
      t.text :body
      t.timestamps
  end

  def down
    drop_table :subreddits
    drop_table :submissions
    drop_table :comments
  end
end
