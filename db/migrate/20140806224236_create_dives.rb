class CreateDives < ActiveRecord::Migration
  def change
    create_table :dives do |t|

      t.belongs_to :diver

      t.column :buddies, :string, array: true, default: []
      t.column :meta, "json", default: {}
      t.column :began_at, :timestamp
      t.column :bottom_time, :integer
      t.column :max_depth, :integer
      t.column :notes, :text, default: ""
      t.column :dive_site_id, :integer
      t.column :water_conditions, :text
      t.column :surface_conditions, :text
      t.column :nitrox, :float
      t.timestamps

    end
  end
end
