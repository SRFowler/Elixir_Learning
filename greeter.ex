# Challenge 1 - Make a Greeter
#  Ask for user name. Reply with "Hi #{name} nice to meet you"
#  Have a special greeting if they answer with your name

defmodule Greeter do

  def greet do
    name = IO.gets("Please enter your name: \n")
      |> String.trim

    case name do
      "Stephen" ->
        "Wow, that's an awesome name!"

      _ ->
        "Hi #{name}, nice to meet you."
    end
  end
end
