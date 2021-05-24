class CreateSessionTopics < ActiveRecord::Migration[6.0]
  def change
    create_table :session_topics do |t|
      t.references :topic, null: false, foreign_key: true
      t.references :session, null: false, foreign_key: true

      t.timestamps
    end
  end
end
