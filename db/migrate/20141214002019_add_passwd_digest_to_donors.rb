class AddPasswdDigestToDonors < ActiveRecord::Migration

  def change
    add_column :donors, :password_digst, :string
  end
end
