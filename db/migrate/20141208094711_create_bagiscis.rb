class CreateBagiscis < ActiveRecord::Migration
  def change
    create_table :bagiscis do |t|
      t.string :name
      t.string :lastname
      t.integer :tcno
      t.string :kanGrubu
      t.datetime :bagiszaman

      t.timestamps
    end
  end
end
