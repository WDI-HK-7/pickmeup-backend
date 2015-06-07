class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :packagetype
      t.string :pulocation
      t.date :pudate
      t.time :putime
      t.string :destination
      t.date :delidate
      t.time :delitime
      t.string :remarks

      t.timestamps null: false


    end
  end
end
