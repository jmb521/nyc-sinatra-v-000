class DropTable < ActiveRecord::Migration
  def change
    drop_table :title

    create_table :titles do |t|
      t.string :name
    end

    drop_table :landmarks

    create_table :landmarks do |t|
      t.string :name
      t.integer :figure_id
      t.integer :year_completed
    end
  end
end
