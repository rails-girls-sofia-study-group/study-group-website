class CreateJoinTableMeetupUser < ActiveRecord::Migration[5.0]
  def change
    create_join_table :meetups, :users do |t|
      # t.index [:meetup_id, :user_id]
      t.index [:user_id, :meetup_id]
    end
  end
end
