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

def list (array)
  array.each_with_index do |song, i|
    puts "#{i+1}. #{song}"
  end
end

def play (array)
  puts "Please enter a song name or number:"
  user_song = gets.chomp

  if user_song.class == String
    if user_song.length <= 2
      user_song = user_song.to_i
      if user_song >0 && user_song <= array.length
        puts "Playing #{array[user_song-1]}"
      else
        puts "Invalid input, please try again"
      end
    end
    if array.include?(user_song)
      puts "Playing #{user_song}"
    else
      puts "Invalid input, please try again"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  loop do
    input = gets.chomp
    case input
    when "help"
      help
    when "list"
      list
    when "play"
      play
    when "exit"
      exit_jukebox
      break
    end
  end
end
