# CSV to JSON Converter API - Ruby Gem

CSV to JSON Converter parses raw CSV text into an array of JSON objects with column names and row counts. It handles comma, semicolon, tab, or pipe delimiters, with optional header row detection.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_csvtojson'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_csvtojson
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_csvtojson'

# Initialize the client
client = APIVerve::Csvtojson::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  csv: "name,age,city
John Doe,30,New York
Jane Smith,25,Los Angeles",
  delimiter: ",",
  has_header: true
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ csv: "name,age,city
John Doe,30,New York
Jane Smith,25,Los Angeles", delimiter: ",", has_header: true })
  puts response["data"]
rescue APIVerve::Csvtojson::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Csvtojson::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Csvtojson::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "row_count": 2,
    "column_count": 3,
    "columns": [
      "name",
      "age",
      "city"
    ],
    "inferredTypes": {
      "name": "string",
      "age": "integer",
      "city": "string"
    },
    "json": [
      {
        "name": "John Doe",
        "age": "30",
        "city": "New York"
      },
      {
        "name": "Jane Smith",
        "age": "25",
        "city": "Los Angeles"
      }
    ]
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/csvtojson?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/csvtojson?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/csvtojson?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
