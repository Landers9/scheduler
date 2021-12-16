class AddColumnUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :admin, :boolean, default: false

    add_column :users, :lastname, :string

    add_column :users, :firstname, :string

    add_column :users, :is_profrespo, :boolean, default: false

    add_column :users, :is_prof, :boolean, default: false

    add_column :users, :telephone, :string
  end
end
