defmodule GuessingGame do
    def start() do
        IO.puts("""
            Welcome to Kelvinsekx Elixir Game
        """)
        rand = :rand.uniform(9) + 1 
        game(rand)
    end

    defp game(rand) do  
        user_guess = get_user_guess()
        get_if_right(user_guess, rand)
    end

    defp get_user_guess() do
        IO.puts("""
            Guess any number between 1 - 10?
        """)

        IO.gets("Pick a number > ") |> String.first() |> String.to_integer()
    end

    defp how_close(num, rand) do
        if num > rand do
          IO.puts("your number is higher")
        else
          IO.puts("your number is lower")
        end
    end 

    defp get_if_right(num, rand) do
        case rand do 
         ^num -> 
            IO.puts("Your guess was right\n Bye!!")
         _ -> 
            how_close(num, rand)
            game(rand)

        end
    end
end
