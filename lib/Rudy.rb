require "net/http"
require "nokogiri"
require "uri"
require "terminal-table"
require "colorize"

module Rudy
  class Attack
    attr_accessor :url
    
    def initialize(url)
        @url = url
    end

    def fetch_html
        uri = URI.parse(@url)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def extract_endpoints(html)
        document = Nokogiri::HTML(html)
        endpoints = []

        # Extract all href values from <a> tags
        document.css("a").each do |link|
            href = link["href"]
            endpoints << href if href && !href.empty? && href.start_with?("/")
        end

        # return endpoints array
        endpoints
    end

    def launch
        html = fetch_html
        endpoints = extract_endpoints(html)

        display_endpoints_table(endpoints)

    end

    def display_endpoints_table(endpoints)
        rows = endpoints.map { |endpoint| [endpoint.colorize(:green)] }
        table = Terminal::Table.new :headings => ["Endpoint"], :rows => rows
      
        puts "\n"
        puts table
        puts "\n(#{endpoints.length}) of Endpoints Found."
    end
  end
end