# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration
RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    # better output for chained matchers
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    # ensure the mocked method exists
    mocks.verify_partial_doubles = true
  end

  # enable the :focus tag
  config.filter_run :focus
  config.run_all_when_everything_filtered = true

  # use the documentation formatter if only running one spec file
  config.default_formatter = 'doc' if config.files_to_run.one?

  # Profile the top 10 slowest examples if we're running the whole suite
  config.profile_examples = 10 unless config.files_to_run.one?

  # Run specs in random order
  config.order = :random

  # Seed global randomization in this process using the `--seed` CLI option.
  Kernel.srand config.seed
end
