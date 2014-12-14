class AddPasswdToDonors < ActiveRecord::Migration
  def change

    add_column :donors, :password, :string

  end
end
