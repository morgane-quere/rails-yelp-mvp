class RemovePhoneNumberAndCategorieFromRestaurant < ActiveRecord::Migration[6.0]
  def change
    remove_column :restaurants, :phone_number
    remove_column :restaurants, :categorie
  end
end
