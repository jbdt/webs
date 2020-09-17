class CreateIpLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :ip_logs do |t|
      t.bigint    :user_id, presence: true
      t.string    :ip, presence: true
      t.timestamp :change_time, presence: true
    end
    add_foreign_key :ip_logs, :users, column: :user_id, primary_key: :id, on_delete: :cascade
  end
end
