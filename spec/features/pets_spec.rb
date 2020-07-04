require 'rails_helper'

RSpec.feature "Pets", type: :feature do
  describe 'navigate' do
    describe 'pets_path' do
      it 'can be reached successfully' do
        visit pets_path
        expect(page.status_code).to eq(200)
      end
    end
  end
end
