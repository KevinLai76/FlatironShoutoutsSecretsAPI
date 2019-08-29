class CreateShoutoutDislikes < ActiveRecord::Migration[5.2]
  def change
    create_table :shoutout_dislikes do |t|
      t.references :user, foreign_key: true
      t.references :shoutout, foreign_key: true

      t.timestamps
    end
  end
end
