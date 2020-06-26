class Client < ApplicationRecord
  require 'csv'
  require 'activerecord-import/base'
  require 'activerecord-import/active_record/adapters/postgresql_adapter'

  def self.my_import(file)
    clients = []
    CSV.foreach(file.path, headers: true) do |row|
      clients << Client.new(row.to_h)
    end
    Client.import clients, recursive: true
  end
end
