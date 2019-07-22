require 'watir'
require 'selenium-webdriver'

def check_if_user_gave_input 
	a = ARGV 
  	if a.empty?
  		puts "search: missing input"
  	else
  		return a
  	end
  end
def search (a)
	browser = Watir::Browser.new(:firefox)
	browser.goto 'google.com'
	search_bar = browser.text_field(class:'gsfi')
	search_bar.set (a.join(" "))
	search_bar.send_keys(:enter)
	submit_button = browser.button(type:"submit")
	submit_button.click

end

def perform
	a = check_if_user_gave_input
	search(a)
end

perform