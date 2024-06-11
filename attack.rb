# 导入必要的库
require "Rudy"
require "tty-prompt"

# 运行菜单函数
def 运行菜单
    # 获取用户输入的攻击目标URL
    puts "请输入您要攻击的URL：\n"
    url = gets.chomp
  
    # 创建 Rudy::Attack 对象
    rudy = Rudy::Attack.new(url)
    # 创建 TTY::Prompt 对象
    prompt = TTY::Prompt.new
    # 设置菜单标题
    header = <<~HEADER
    ===== RUDY 攻击 ======
    HEADER

    # 菜单选项
    菜单项 = ["列出所有端点", "查看使用的技术栈", "发动攻击", "列出所有本地存储", "列出所有 Cookie"]

    # 提示用户选择菜单项
    选择的项目 = prompt.select(header, 菜单项, cycle: true, per_page: 3)

   # 根据用户选择执行相应操作
    case 选择的项目
        
    when 菜单项[0]
        # 列出所有端点
        rudy.launch
    when 菜单项[1]
        # 查看使用的技术栈
        # 添加相应代码
    when 菜单项[2]
        # 发动攻击
        # 添加相应代码
    when 菜单项[3]
        # 列出所有本地存储
        # 添加相应代码
    when 菜单项[4]
        # 列出所有 Cookie
        # 添加相应代码
    end
end

# 调用运行菜单函数
运行菜单
