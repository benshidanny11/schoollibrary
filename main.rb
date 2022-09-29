require './app'

def run(app) # rubocop:todo Metrics/CyclomaticComplexity
  choose = select_options
  choose = select_options while choose < 1 || choose > 7
  case choose
  when 1
    app.books_list
    puts 'first choose'
  when 2
    app.person_list
  when 3
    app.create_person
  when 4
    app.create_book
  when 5
    app.create_rental
  when 6
    app.rentals_list
  when 7
    puts 'Bye'
    exit
  end
end

def select_options
  puts
  puts 'Please choose an option by entering a number: '
  options = [
    '1 - List all books',
    '2 - List all people',
    '3 - Create a person',
    '4 - Create a book',
    '5 - Create a rental',
    '6 - List all rentals for a given person id',
    '7 - Exit'
  ]
  puts options
  gets.chomp.to_i
end

def main
  puts 'School Library\n'
  app = App.new
  run(app)
end

main
