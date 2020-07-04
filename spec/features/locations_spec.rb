require 'rails_helper'

RSpec.feature "Locations", type: :feature do
  describe 'navigate' do
    describe 'locations_path' do
      it 'can be reached successfully' do
        visit locations_path
        expect(page.status_code).to eq(200)
      end
    end
  end
end
