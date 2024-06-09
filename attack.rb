require "Rudy"
require "tty-prompt"

def run_menu

    puts "Url You want to Attack:\n"
    
    url = gets.chomp
  
    rudy = Rudy::Attack.new(url)
    prompt = TTY::Prompt.new
    header = <<~HEADER
    ===== RUDY ======
    HEADER

  menu_items = ["List All Endpoints", "What Tech-Stack Do They Use?", "Attack"]

  selected_item = prompt.select(header, menu_items, cycle: true, per_page: 3)

  if selected_item == menu_items[0]
    rudy.launch
  end
end

run_menu