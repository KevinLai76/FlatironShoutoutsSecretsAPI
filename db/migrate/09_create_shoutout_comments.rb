class CreateShoutoutComments < ActiveRecord::Migration[5.2]
  def change
    create_table :shoutout_comments do |t|
      t.string :content
      t.references :user, foreign_key: true
      t.references :shoutout, foreign_key: true

      t.timestamps
    end
  end
end
