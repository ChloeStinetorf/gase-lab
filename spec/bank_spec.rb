require_relative 'spec_helper'
require_relative '../bank'

describe Bank do

  let(:bank) {Bank.new('GASE')}

  describe "#new" do
    it "creates a bank object" do
      expect(bank).to_not eq nil
    end
  end

  describe "#create_new_client" do
    it "creates new client" do
      bank.create_new_client('Teddy', 350_000)
      expect(bank.clients['Teddy']).to_not eq nil
    end
  end

   describe "#list_clients" do
    it "lists all clients" do
      bank.create_new_client('Chloe', 450_000)
      bank.create_new_client('Lisa', 150_000)
      expect(bank.list_clients).to eq "Clients: Chloe Lisa"
      puts bank.list_clients
    end
  end





end