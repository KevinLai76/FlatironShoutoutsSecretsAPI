class CreateShoutoutLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :shoutout_likes do |t|
      t.references :user, foreign_key: true
      t.references :shoutout, foreign_key: true

      t.timestamps
    end
  end
end
