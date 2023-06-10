class AddTag < ActiveRecord::Migration[7.0]
  def change
    create_table :tag do |t|
      t.references :tweet, foreign_key: true
      t.references :hashtag, foreign_key: true
    
      t.timestamps
    end
    
  end
end
