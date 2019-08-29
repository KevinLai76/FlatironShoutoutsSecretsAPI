class CreateSecretLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :secret_likes do |t|
      t.references :user, foreign_key: true
      t.references :secret, foreign_key: true

      t.timestamps
    end
  end
end
