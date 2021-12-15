# Read in a file and return the number of lines, words, and characters

filename = IO.gets("Input a file name: ") |> String.trim()

# File.read BANG instructs it to crash if the file is not found
body = File.read!(filename)

lines =  String.split(body, ~r{(\r\n|\n|\r)})
words = String.split(body, ~r{(\\n|[^\w'])+}) |> Enum.filter(fn x -> x != "" end)
characters = String.split(body, "") |> Enum.filter(fn x -> x != "" end)

IO.puts("Line Count: #{Enum.count(lines)}")
IO.puts("Word Count: #{Enum.count(words)}")
IO.puts("Char Count: #{Enum.count(characters)}")
