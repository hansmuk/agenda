class AddAvatarToContatos < ActiveRecord::Migration
  def self.up
    add_column :contatos, :avatar_file_name,    :string
    add_column :contatos, :avatar_content_type, :string
    add_column :contatos, :avatar_file_size,    :integer
    add_column :contatos, :avatar_updated_at,   :datetime
  end

  def self.down
    remove_column :contatos, :avatar_file_name
    remove_column :contatos, :avatar_content_type
    remove_column :contatos, :avatar_file_size
    remove_column :contatos, :avatar_updated_at
  end
end

