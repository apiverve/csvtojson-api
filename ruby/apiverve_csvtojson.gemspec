# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "apiverve_csvtojson"
  spec.version       = "1.2.2"
  spec.authors       = ["APIVerve"]
  spec.email         = ["hello@apiverve.com"]

  spec.summary       = "CSV to JSON Converter API - Ruby Client"
  spec.description   = "CSV to JSON Converter parses raw CSV text into an array of JSON objects with column names and row counts. It handles comma, semicolon, tab, or pipe delimiters, with optional header row detection."
  spec.homepage      = "https://apiverve.com/marketplace/csvtojson?utm_source=ruby&utm_medium=referral&utm_content=homepage"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/apiverve/csvtojson-API/tree/main/ruby"
  spec.metadata["changelog_uri"] = "https://apiverve.com/changelog"
  spec.metadata["documentation_uri"] = "https://docs.apiverve.com/ref/csvtojson"

  spec.files = Dir.glob("{lib}/**/*") + %w[README.md LICENSE]
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", ">= 1.0", "< 3.0"
  spec.add_dependency "faraday-multipart", "~> 1.0"
  spec.add_dependency "json", "~> 2.0"
end
