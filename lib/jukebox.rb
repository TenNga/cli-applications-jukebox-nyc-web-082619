# Add your code here
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  
  songs.each_with_index do |value,index|
    puts "#{index + 1}. #{value}"
  end
  
end

def play(songs) 
  puts "Please enter a song name or number:"
  input = gets.strip
  status = false 
  songs.each_with_index do |value,index|
    
    if input.to_i == index + 1 || input.to_s == value
      puts "Playing #{value}"
      status = true 
    end
    
  end
      puts "Invalid input, please try again" if !status 
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  while(true) do 
    puts "Please enter a command:"
    input = gets.strip.to_s
    
    case input
      when "help"
        help()
      when "list"
        list(songs)
      when "play"
        play(songs)
      when "exit"
        exit_jukebox()
        break
      else 
        "Wrong commands"
    end
  end
end


