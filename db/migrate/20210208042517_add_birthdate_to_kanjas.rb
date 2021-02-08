class AddBirthdateToKanjas < ActiveRecord::Migration[6.1]
  def change
    add_column :kanjas, :birthdate, :date
    add_column :kanjas, :address, :string
  end
end
