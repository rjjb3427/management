class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :person_type
      t.string :description

      t.timestamps null: false
    end
  end
end
