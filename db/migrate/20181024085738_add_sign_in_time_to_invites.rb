class AddSignInTimeToInvites < ActiveRecord::Migration[5.2]
  def change
    add_column :invites, :sign_in_time, :datetime
  end
end
