class CreateTestIdps < ActiveRecord::Migration
  def change
    create_table :test_idps do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      
      t.timestamps
    end
    
    add_index :test_idps, :first_name
    add_index :test_idps, :last_name
    add_index :test_idps, :age
  end
end
