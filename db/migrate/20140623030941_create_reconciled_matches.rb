class CreateReconciledMatches < ActiveRecord::Migration
  def change
    create_table :reconciled_matches do |t|
      t.integer :master_dataset_id
      t.string  :satellite_dataset
      t.integer :satellite_dataset_id
      t.timestamps
    end
    
    add_index :reconciled_matches, :master_dataset_id 
    add_index :reconciled_matches, :satellite_dataset
    add_index :reconciled_matches, :satellite_dataset_id
  end
end
