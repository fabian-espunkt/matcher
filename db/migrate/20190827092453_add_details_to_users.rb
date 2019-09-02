class AddDetailsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :type, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :company_name, :string
    add_column :users, :position, :string
    add_column :users, :company_city, :string
    add_column :users, :firm_description, :string
    add_column :users, :stages, :string, array: true, default: []
    add_column :users, :sectors, :string, array: true, default: []
    add_column :users, :business_models, :string, array: true, default: []
    add_column :users, :selling_to, :string, array: true, default: []
    add_column :users, :company_url, :string
    add_column :users, :launch_status, :text, array: true, default: []
    add_column :users, :company_founding_year, :integer
    add_column :users, :generating_revenue, :boolean, null: false, default: false
    add_column :users, :profitable, :boolean, null: false, default: false
    add_column :users, :ticket_size, :string
  end
end
