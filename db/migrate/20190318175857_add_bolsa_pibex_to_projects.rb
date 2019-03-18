class AddBolsaPibexToProjects < ActiveRecord::Migration
  def change
  	    add_column :projects, :auxilio_pibex, :boolean
  end
end
