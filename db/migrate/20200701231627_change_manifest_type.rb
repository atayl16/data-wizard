class ChangeManifestType < ActiveRecord::Migration[5.2]
  def change
    rename_column :batchmanifests, :type, :filetype
  end
end
