class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :packagetype
      t.string :pulocation
      t.datetime :earlyputime
      t.datetime :lateputime
      t.string :destination
      t.datetime :earlydelitime
      t.datetime :latedelitime
      t.string :remarks

      t.timestamps null: false


    end
  end
end
