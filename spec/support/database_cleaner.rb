RSpec.configure do |config|
  config.after(:each, db_strategy: :deletion) do |_example|
    DatabaseCleaner.clean_with(:deletion)
  end
end
