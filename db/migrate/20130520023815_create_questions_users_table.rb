class CreateQuestionsUsersTable < ActiveRecord::Migration
  def up
    create_table :questions_users, :id => false do |t|
      t.references :question
      t.references :user
    end
  end

  def down
    drop_table :questions_users
  end
end
