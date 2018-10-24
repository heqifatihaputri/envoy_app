class AddEmailVisitorToInvites < ActiveRecord::Migration[5.2]
  def change
    add_column :invites, :email_visitor, :string
  end
end
