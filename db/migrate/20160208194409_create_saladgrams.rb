class CreateSaladgrams < ActiveRecord::Migration
  def change
    create_table :saladgrams do |t|

      t.integer :user_id

      t.integer :chat_id

      t.string :photo_url

      t.string :caption


      t.timestamps

    end

  end
end
