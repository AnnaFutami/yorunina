class CreateSongs < ActiveRecord::Migration[6.1]
  def change
    create_table :songs do |t|
      t.string :question
      t.string :question2

      t.timestamps
    end
  end
end
