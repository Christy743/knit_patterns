class AddPatternIdToYarns < ActiveRecord::Migration[5.1]
  def change
    add_column :yarns, :pattern_id, :integer
  end
end
