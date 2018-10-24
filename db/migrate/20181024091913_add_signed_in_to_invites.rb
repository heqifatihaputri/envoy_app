class AddSignedInToInvites < ActiveRecord::Migration[5.2]
  def change
    add_column :invites, :signed_in, :boolean, default: false
  end
end
