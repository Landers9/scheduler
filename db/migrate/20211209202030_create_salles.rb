class CreateSalles < ActiveRecord::Migration[5.2]
  def change
    create_table :salles do |t|
      t.string :name

      t.timestamps
    end
  end
end
