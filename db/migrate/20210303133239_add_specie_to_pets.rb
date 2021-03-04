class AddSpecieToPets < ActiveRecord::Migration[6.0]
  def change
    add_column :pets, :species, :string
  end
end
