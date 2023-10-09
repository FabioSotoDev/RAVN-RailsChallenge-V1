class AddLastCaptureToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :last_capture, :datetime
  end
end
