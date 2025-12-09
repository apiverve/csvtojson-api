using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.CSVtoJSONConverter
{
    /// <summary>
    /// Query options for the CSV to JSON Converter API
    /// </summary>
    public class CSVtoJSONConverterQueryOptions
    {
        /// <summary>
        /// The CSV data to convert to JSON
        /// Example: name,age,city
John,30,New York
Jane,25,Los Angeles
        /// </summary>
        [JsonProperty("csv")]
        public string Csv { get; set; }

        /// <summary>
        /// The delimiter used in the CSV (default: comma)
        /// Example: ,
        /// </summary>
        [JsonProperty("delimiter")]
        public string Delimiter { get; set; }

        /// <summary>
        /// Whether the first row contains column headers (default: true)
        /// Example: true
        /// </summary>
        [JsonProperty("has_header")]
        public string Has_header { get; set; }
    }
}
