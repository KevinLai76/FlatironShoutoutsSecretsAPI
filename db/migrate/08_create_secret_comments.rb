class CreateSecretComments < ActiveRecord::Migration[5.2]
  def change
    create_table :secret_comments do |t|
      t.string :content
      t.references :user, foreign_key: true
      t.references :secret, foreign_key: true

      t.timestamps
    end
  end
end
