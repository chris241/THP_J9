require "bundler"
require "pry"

def check_if_user_gave_input
	
  abort("mkdir: missing input") if ARGV.empty?
end

def get_folder_name
  return folder_name = ARGV.first
end


def create_folder (folder_name)
  Dir.mkdir("#{folder_name}")
end

def create_file 
	file = File.open("Gemfile", "a")
	file.puts ("gem 'pry'")
	file.puts ("gem 'bundler'")
	file.puts ("gem 'rspec'")
	file.puts ("gem 'rubocop'")
	file.puts ("gem 'dotenv'")
	file.close

	file1 = File.open(".env", "a+")
	file1.close
	file2 = File.open(".gitignore", "a")
	file2.puts(".env")
	file2.close
end

def execution
	system ("bundle install")
	system ("rspec --init")
	system ("git init")
	

end

def perform
 check_if_user_gave_input
 folder_name = get_folder_name
 create_folder(folder_name)
 create_file
 execution
end

perform