class AddPatternIdToNeedles < ActiveRecord::Migration[5.1]
  def change
    add_column :needles, :pattern_id, :integer
  end
end
