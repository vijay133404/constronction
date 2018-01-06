class CreateInquiries < ActiveRecord::Migration[5.1]
  def change
    create_table :inquiries do |t|
      t.string :name
      t.string :email
      t.string :phone_number
      t.string :inquiry_type
      t.text :description

      t.timestamps
    end
  end
end
