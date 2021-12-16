class CreatePlannings < ActiveRecord::Migration[5.2]
  def change
    create_table :plannings do |t|
      t.references :user, foreign_key: true
      t.references :salle, foreign_key: true
      t.references :formation, foreign_key: true
      t.references :material, foreign_key: true
      t.datetime :date_begin, null:false
      t.datetime :date_end, null:false
    end
  end
end
