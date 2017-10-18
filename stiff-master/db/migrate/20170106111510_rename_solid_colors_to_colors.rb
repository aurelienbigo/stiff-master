class RenameSolidColorsToColors < ActiveRecord::Migration[5.0]
  def self.up
    rename_table :solid_colors, :colors
  end

  def self.down
    rename_table :colors, :solid_colors
  end
end
