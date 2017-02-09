require 'database_cleaner'
# RSpec.configure do |config|
#
#   config.before(:each) do
#     begin
#       DatabaseCleaner.start
#     ensure
#       DatabaseCleaner.clean
#     end
#   end
# end

RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods

  config.before(:suite) do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)
  end

  config.before(:each) do
    FactoryGirl.lint
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end

end
