require 'rails_helper'

RSpec.feature "Salonservices", type: :feature do
  describe 'navigate' do
    describe 'salonservices' do
      it 'can be reached successfully' do
        visit salonservices_path
        expect(page.status_code).to eq(200)
      end
    end
  end
end
