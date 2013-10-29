class CreateBillableWeeks < ActiveRecord::Migration
  def change
    create_table :billable_weeks do |t|
      t.string :name

      t.timestamps
    end
  end
end
