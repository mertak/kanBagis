class CreateDonors < ActiveRecord::Migration
  def change
    create_table :donors do |t|
      t.string :name
      t.string :lastname
      t.string :bloodGroup
      t.string :bloodType
      t.integer :tcNo
      t.string :location
      t.date :donateTime
      t.integer :tel

      t.timestamps
    end
  end
end
