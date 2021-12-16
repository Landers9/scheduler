class CreateTableFormation < ActiveRecord::Migration[5.2]
  def change
    create_table :formations do |t|
      t.string :libelle
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
