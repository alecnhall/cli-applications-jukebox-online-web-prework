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

# def say_hello(name)
#   "Hi #{name}!"
# end
#
# puts "Enter your name:"
# users_name = gets.strip
#
# puts say_hello(users_name)


def help
  user_input = gets.strip
  if user_input == "help"
    puts "I accept the following commands:"
    puts "- help : displays this help message"
    puts "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
    puts "- exit : exits this program"
  end
end

# help

def list(songs)
  songs.each_with_index {|song, index| puts "#{index + 1}. #{song}"}
end

list(songs)

def play(songs)
  puts "Please enter a song name or number:"
  response = gets.strip
  if response.to_i == 0
    if songs.include?(response)
    puts "Playing #{response}"
    end
    return
  end
  if !songs[response.to_i - 1]
    puts "Invalid input, please try again"
    return
  end
  puts "Playing #{songs[response.to_i - 1]}"
    return
end

play(songs)
