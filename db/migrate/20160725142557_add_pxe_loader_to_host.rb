class AddPxeLoaderToHost < ActiveRecord::Migration
  def change
    add_column :hosts, :pxe_loader, :string, :limit => 255

    reversible do |dir|
      dir.up do
        Host.update_all(:pxe_loader => 'PXELinux BIOS')
      end
    end
  end
end
