class CreateJobBoards < ActiveRecord::Migration[8.0]
  def change
    create_table :job_boards do |t|
      t.string :company_name
      t.string :company_link
      t.boolean :applied
      t.string :position
      t.date :date_posted

      t.timestamps
    end
  end
end
