class AddAgeToTestIdPs < ActiveRecord::Migration
  def change
    add_column :test_idps, :sex, :string
  end
end
