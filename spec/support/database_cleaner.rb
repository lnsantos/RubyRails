RSpec.configure do |config|
  config.before(:suite) do
    DatabaseCleaner.strategy=:transaction
    DatabaseCleaner.clean_with :truncation

  end

  config.around(:each) do |exemple|
    DatabaseCleaner.cleaning do
      exemple.run
    end
  end

end
