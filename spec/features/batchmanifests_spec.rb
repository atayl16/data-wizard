require 'rails_helper'

RSpec.feature "Batchmanifests", type: :feature do
  describe 'navigate' do
    describe 'batchmanifests_path' do
      it 'can be reached successfully' do
        visit batchmanifests_path
        expect(page.status_code).to eq(200)
      end
    end
  end
end
