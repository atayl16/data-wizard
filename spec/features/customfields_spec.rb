require 'rails_helper'

RSpec.feature "Customfields", type: :feature do
  describe 'navigate' do
    describe 'customfields_path' do
      it 'can be reached successfully' do
        visit customfields_path
        expect(page.status_code).to eq(200)
      end
    end
  end
end
