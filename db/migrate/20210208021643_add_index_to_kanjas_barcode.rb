class AddIndexToKanjasBarcode < ActiveRecord::Migration[6.1]
  def change
    add_index :kanjas, :barcode, unique: true
  end
end
