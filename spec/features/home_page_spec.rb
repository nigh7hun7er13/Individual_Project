require 'rails_helper'

RSpec.feature "HomePages", type: :feature do
#  pending "add some scenarios (or delete) #{__FILE__}"
  scenario "The visitor should see projects" do
    visit root_path
    expect(page).to have_text("Posts")
  end
end
