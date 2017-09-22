class CreateNandeyanens < ActiveRecord::Migration[5.1]
  def change
    create_table :nandeyanens do |t|
      t.dousite :title
      t.dousite :message

      t.timestamps
    end
  end
end
