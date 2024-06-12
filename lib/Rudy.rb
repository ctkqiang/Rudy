# 导入必要的库
require "net/http"
require "nokogiri"
require "uri"
require "terminal-table"
require "colorize"
require "mechanize"

module Rudy
  class Attack
    attr_accessor :url
    
    # 初始化攻击对象，并设置攻击目标URL
    def initialize(url)
        @url = url
        @agent = Mechanize.new
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

    def get_cookies
        # 获取页面
        page = @agent.get(@url)

        # 获取并打印所有 cookies
        cookies = @agent.cookie_jar.cookies

        display_cookies_table(cookies)
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

    def display_cookies_table(cookies)

        if cookies.nil?
            puts "未找到任何 cookie。"
            return
        else
            cookies.each do |cookie|
                puts "| 名称: #{cookie.name}"
                puts "| 值: #{cookie.value}"
                puts "| 域: #{cookie.domain}"
                puts "| 路径: #{cookie.path}"
        
                if cookie.expires  
                    puts "| 过期时间: #{cookie.expires}"  
                else  
                    puts "| 过期时间: 未设置"  
                end  
        
                puts "| 安全: #{cookie.secure?}"

                puts "-" * 50
            end
        end
    
        puts "\n共找到 #{cookies.length} 个 cookies."
    end
  end
end
