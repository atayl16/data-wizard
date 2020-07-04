require 'rails_helper'

RSpec.feature "Clients", type: :feature do
  describe 'navigate' do
    describe 'clients_path' do
      it 'can be reached successfully' do
        visit clients_path
        expect(page.status_code).to eq(200)
      end
    end
  end
end
