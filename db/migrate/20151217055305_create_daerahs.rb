class CreateDaerahs < ActiveRecord::Migration
  def change
    create_table :daerahs do |t|
      t.string :nama

      t.timestamps null: false
    end
  end
end
