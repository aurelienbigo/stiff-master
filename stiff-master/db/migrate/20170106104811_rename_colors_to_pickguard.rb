class RenameColorsToPickguard < ActiveRecord::Migration[5.0]
  def self.up
    rename_table :colors, :pickguards
  end

  def self.down
    rename_table :pickguards, :colors
  end
end
