class CreateTherapists < ActiveRecord::Migration
  def change
    create_table :therapists do |t|
      t.string :email
      t.string :password_hash
      t.string :password_salt
      t.string :string

      t.timestamps
    end
  end
end
