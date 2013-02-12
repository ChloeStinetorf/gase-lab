require_relative 'client'

class Bank
  attr_accessor :name, :clients

  def initialize(name)
    @name = name
    @clients = {}
  end

  def create_new_client(name, balance)
    @clients[name] = Client.new(name, balance, {}) if @clients[name].nil?
  end

  def list_clients
    clients_string = "Clients:"
    @clients.each {|n, c| clients_string += " #{n}"}
    clients_string
  end

end

