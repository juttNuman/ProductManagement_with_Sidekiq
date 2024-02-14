class AddTokenToCarts < ActiveRecord::Migration[7.1]
  def change
    add_column :carts, :token, :string
  end
end
