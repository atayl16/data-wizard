require 'rails_helper'

RSpec.feature "Staffs", type: :feature do
  describe 'navigate' do
    describe 'staffs_path' do
      it 'can be reached successfully' do
        visit staffs_path
        expect(page.status_code).to eq(200)
      end
    end
  end
end
