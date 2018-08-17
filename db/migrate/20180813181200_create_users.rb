class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :photo
      t.string :bio
      t.string :from
    end
  end
end
