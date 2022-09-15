# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'author', with: 'person'
    fill_in 'Price', with: '10'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content(nil)
  end
end

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid author' do
    visit new_book_path
    fill_in 'author', with: 'person'
  end
end

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid price' do
    visit new_book_path
    fill_in 'Price', with: '10'
  end
end

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid date' do
    visit new_book_path
    fill_in 'Date', with: Date.current
  end
end

RSpec.describe 'Creating a book', type: :feature do
  scenario 'blank input' do
    visit new_book_path
    click_on 'Create Book'
    expect(page).to have_content("Title can't be blank")
  end
end



