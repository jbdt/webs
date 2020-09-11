class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      # Data
      t.string   :name, presence: true
      t.string   :surnames, presence: true
      t.string   :phone, presence: true
      t.string   :email, presence: true
      t.integer  :role, presence: true, default: 0

      #Style
      t.boolean  :fixed_header, default: true, null: false
      t.boolean  :fixed_sidebar, default: true, null: false
      t.string   :header_color, default: "bg-royal header-text-light", null: false
      t.string   :sidebar_color, default: "bg-royal sidebar-text-light", null: false
      t.boolean  :tab_line, default: false, null: false

      #Device
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip
      t.string   :encrypted_password, null: false, default: ""
      t.datetime :remember_created_at

      t.timestamps null: false
    end

    add_index :users, :email, unique: true
  end
end
