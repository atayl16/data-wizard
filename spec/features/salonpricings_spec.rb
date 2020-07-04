require 'rails_helper'

RSpec.feature "Salonpricings", type: :feature do
  describe 'navigate' do
    describe 'salonpricing' do
      it 'can be reached successfully' do
        visit salonpricings_path
        expect(page.status_code).to eq(200)
      end
    end
  end
end
