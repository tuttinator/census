class CreateCommunityBoards < ActiveRecord::Migration
  def change
    create_table :community_boards do |t|
      t.string :name

      t.timestamps
    end
  end
end
