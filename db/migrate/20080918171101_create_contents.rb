class CreateContents < ActiveRecord::Migration
  def self.up
    create_table :contents do |t|
      t.string :name
      t.text :body
      t.string :page
      t.timestamps
    end
  end

  def self.down
    drop_table :contents
  end
end
