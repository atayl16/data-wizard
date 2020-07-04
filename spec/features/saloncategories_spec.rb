require 'rails_helper'

RSpec.feature "Saloncategories", type: :feature do
  describe 'navigate' do
    describe 'saloncategories' do
      it 'can be reached successfully' do
        visit saloncategories_path
        expect(page.status_code).to eq(200)
      end
    end
  end
end
