class CreateSecrets < ActiveRecord::Migration[5.2]
  def change
    create_table :secrets do |t|
      t.string :content
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
