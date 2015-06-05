class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :pulocation
      t.date :pudate
      t.time :putime
      t.string :destination
      t.date :delidate
      t.time :delitime
      t.string :contactnum
      t.string :remarks
      # t.string :title
      # t.string :content

      t.timestamps null: false


    end
  end
end
