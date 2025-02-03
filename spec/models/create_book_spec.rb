require 'rails_helper'

RSpec.feature 'Book Management', type: :feature do
  # Happy Path: Successfully add a book
  scenario 'User adds a new book successfully' do
    visit new_book_path

    fill_in 'Title', with: 'Sample Book'
    fill_in 'Author', with: 'John Doe'
    fill_in 'Price', with: '9.99'
    
    select Date.today.year, from: "book_date_1i"
    select Date.today.strftime("%B"), from: "book_date_2i"
    select Date.today.day, from: "book_date_3i"

    click_button 'Create Book'

    expect(page).to have_current_path(books_path)
    expect(page).to have_content('Book was successfully created.')

    expect(Book.last.title).to eq('Sample Book')
  end

  scenario 'User fails to add a book due to missing title' do
    visit new_book_path

    # fill_in 'Title', with: ''
    fill_in 'Author', with: 'John Doe'
    fill_in 'Price', with: '9.99'
    
    select Date.today.year, from: "book_date_1i"
    select Date.today.strftime("%B"), from: "book_date_2i"
    select Date.today.day, from: "book_date_3i"

    click_button 'Create Book'

    expect(page).to have_content("fields can't be blank")

  end
end
