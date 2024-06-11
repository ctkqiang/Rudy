# 导入必要的库
require "net/http"
require "nokogiri"
require "uri"
require "terminal-table"
require "colorize"

module Rudy
  class Attack
    attr_accessor :url
    
    # 初始化攻击对象，并设置攻击目标URL
    def initialize(url)
        @url = url
    end

    # 获取目标URL的HTML内容
    def fetch_html
        uri = URI.parse(@url)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    # 从HTML内容中提取所有的端点（链接）
    def extract_endpoints(html)
        document = Nokogiri::HTML(html)
        endpoints = []

        # 从所有的 <a> 标签中提取 href 属性的值作为端点
        document.css("a").each do |link|
            href = link["href"]
            endpoints << href if href && !href.empty? && href.start_with?("/")
        end

        # 返回端点数组
        endpoints
    end

    # 发起攻击，获取HTML内容并提取端点信息，然后显示在表格中
    def launch
        html = fetch_html
        endpoints = extract_endpoints(html)

        # 显示端点信息的表格
        display_endpoints_table(endpoints)
    end

    # 显示端点信息的表格
    def display_endpoints_table(endpoints)
        # 格式化端点数组，并使用绿色显示
        rows = endpoints.map { |endpoint| [endpoint.colorize(:green)] }
        # 创建表格对象
        table = Terminal::Table.new :headings => ["端点"], :rows => rows
      
        # 输出表格
        puts "\n"
        puts table
        puts "\n共找到 #{endpoints.length} 个端点."
    end
  end
end
