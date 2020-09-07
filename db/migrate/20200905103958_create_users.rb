class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|

      t.string   :name, presence: true
      t.string   :surnames, presence: true
      t.string   :phone, presence: true
      t.string   :email, presence: true
      t.integer  :role, presence: true, default: 0

      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip
      t.string   :encrypted_password, null: false, default: ""

      t.timestamps null: false
    end

    add_index :users, :email, unique: true
  end
end
