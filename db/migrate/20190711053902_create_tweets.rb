class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.text      :text
      t.text      :image
      t.timestamps
    end
  end
end
