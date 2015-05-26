class AddPasswordDigestToFamily < ActiveRecord::Migration
  def change
    add_column :families, :password_digest, :string
  end
end
