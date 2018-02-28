class AddReferencesToInvitation < ActiveRecord::Migration[5.1]
  def change
    add_column :invitations, :event_id, :integer
    add_column :invitations, :attendee_id, :integer
  end
end
