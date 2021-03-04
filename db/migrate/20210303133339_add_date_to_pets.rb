class AddDateToPets < ActiveRecord::Migration[6.0]
  def change
    add_column :pets, :found_on, :date
  end
end
