class CreateUnreconciledMatches < ActiveRecord::Migration
  def change
    create_table :unreconciled_matches do |t|
      t.string :master_dataset_ids
      t.string  :satellite_dataset
      t.integer :satellite_dataset_id
      t.timestamps
    end
    
    add_index :unreconciled_matches, :satellite_dataset
    add_index :unreconciled_matches, :satellite_dataset_id
  end
end
