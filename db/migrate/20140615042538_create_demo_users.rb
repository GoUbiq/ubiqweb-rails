class CreateDemoUsers < ActiveRecord::Migration
  def change
    create_table :demo_users do |t|
      t.string :name
      t.string :email
      t.integer :ph_num
      t.string :message

      t.timestamps
    end
  end
end
