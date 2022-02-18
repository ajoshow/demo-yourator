class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :description
      t.string :mission
      t.string :media_coverage
      t.string :benefit
      t.boolean :active, :default => false
      t.timestamps
    end
  end
end
