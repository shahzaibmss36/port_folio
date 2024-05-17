class CreateEnquiries < ActiveRecord::Migration[7.1]
  def change
    create_table :enquiries do |t|
      t.string :name
      t.string :subject
      t.string :email
      t.text :description

      t.timestamps
    end
  end
end
