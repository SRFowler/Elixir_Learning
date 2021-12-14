# Read in a file and return the number of words it contains

filename = IO.gets("File to count the words from: ") |> String.trim()

# File.read BANG instructs it to crash if the file is not found
# Split with Regex for new line or non-word characters except for '
# Anon functon filters to keep non empty characters
words = File.read!(filename)
  |> String.split(~r{(\\n|[^\w'])+})
  |> Enum.filter(fn x -> x != "" end)

words |> Enum.count() |> IO.puts()
