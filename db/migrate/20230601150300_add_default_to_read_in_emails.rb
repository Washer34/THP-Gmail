class AddDefaultToReadInEmails < ActiveRecord::Migration[7.0]
  def up
    change_column_default :emails, :read, false
  end

  def down
    change_column_default :emails, :read, nil
  end
end
