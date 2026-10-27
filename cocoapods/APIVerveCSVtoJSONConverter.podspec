Pod::Spec.new do |s|
  s.name             = 'APIVerveCSVtoJSONConverter'
  s.version          = '1.2.3'
  s.summary          = 'CSV to JSON Converter parses raw CSV text into an array of JSON objects with column names and row counts.'
  s.description      = <<-'DESC'
CSV to JSON Converter parses raw CSV text into an array of JSON objects with column names and row counts. It handles comma, semicolon, tab, or pipe delimiters, with optional header row detection.

This iOS/macOS SDK provides a convenient way to access the CSV to JSON Converter from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/csvtojson?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/csvtojson-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveCSVtoJSONConverter/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
