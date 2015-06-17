class CreateCaptchas < ActiveRecord::Migration
  def change
    create_table :captchas do |t|
      t.string :key
      t.string :code

      t.timestamps null: false
    end
    add_index :captchas, :key
  end
end
