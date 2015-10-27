require 'rspec_api_documentation'
require 'rspec_api_documentation/dsl'

RspecApiDocumentation.configure do |config|
  config.api_name = "Vute Api"

  config.docs_dir = Rails.root.join("doc")

  config.format = [:json, :combined_text, :html]

  config.curl_host = 'http://localhost:3000'

  config.request_headers_to_include = ["Content-Type", "Authorization"]
  config.response_headers_to_include = ["Content-Type"]

  config.curl_headers_to_filter = %w[Host Cookie]

  config.post_body_formatter = proc do |params|
    { data: params }.to_json if params.present?
  end
end
