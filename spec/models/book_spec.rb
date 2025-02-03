require 'rails_helper'

RSpec.describe Book, type: :model do
  # Happy and unhappy test cases for `title`
  it 'is valid with a title' do
    book = Book.new(title: 'Sample Book', author: 'John Doe', price: 9.99, date: Date.today)
    expect(book).to be_valid
  end

  it 'is not valid without a title' do
    book = Book.new(title: nil, author: 'John Doe', price: 9.99, date: Date.today)
    expect(book).not_to be_valid
    expect(book.errors[:title]).to include("can't be blank")
  end

  # Happy and unhappy test cases for `author`
  it 'is valid with an author' do
    book = Book.new(title: 'Sample Book', author: 'John Doe', price: 9.99, date: Date.today)
    expect(book).to be_valid
  end

  it 'is not valid without an author' do
    book = Book.new(title: 'Sample Book', author: nil, price: 9.99, date: Date.today)
    expect(book).not_to be_valid
    expect(book.errors[:author]).to include("can't be blank")
  end

  # Happy and unhappy test cases for `price`
  it 'is valid with a price' do
    book = Book.new(title: 'Sample Book', author: 'John Doe', price: 9.99, date: Date.today)
    expect(book).to be_valid
  end

  it 'is not valid without a price' do
    book = Book.new(title: 'Sample Book', author: 'John Doe', price: nil, date: Date.today)
    expect(book).not_to be_valid
    expect(book.errors[:price]).to include("can't be blank")
  end

  # Happy and unhappy test cases for `date`
  it 'is valid with a date' do
    book = Book.new(title: 'Sample Book', author: 'John Doe', price: 9.99, date: Date.today)
    expect(book).to be_valid
  end

  it 'is not valid without a date' do
    book = Book.new(title: 'Sample Book', author: 'John Doe', price: 9.99, date: nil)
    expect(book).not_to be_valid
    expect(book.errors[:date]).to include("can't be blank")
  end
end
