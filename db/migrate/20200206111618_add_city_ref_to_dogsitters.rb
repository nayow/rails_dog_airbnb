class AddCityRefToDogsitters < ActiveRecord::Migration[5.2]
  def change
    add_reference :dogsitters, :city, foreign_key: true
  end
end
