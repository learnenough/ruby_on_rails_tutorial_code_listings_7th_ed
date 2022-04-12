ENV['RAILS_ENV'] ||= 'test'
.
.
.
class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)
  # Set up all fixtures in test/fixtures/*.yml.
  fixtures :all
  include ApplicationHelper
  .
  .
  .
end
