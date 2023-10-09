class CreateReportCatches < ActiveRecord::Migration[6.0]
  def change
    create_view :report_catches
  end
end
