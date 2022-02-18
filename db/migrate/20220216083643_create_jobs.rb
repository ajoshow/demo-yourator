class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.string :name
      t.string :description
      t.string :prerequisite
      t.string :company_benefit
      t.string :salary_range
      t.boolean :open, :default => false
      t.boolean :featured, :default => true
      t.integer :company_id
      t.timestamps
    end
  end
end
