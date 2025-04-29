defmodule Main do
  def generate_random_number do
    1..100 |> Enum.random()
  end

  def main do
    n = generate_random_number()
    IO.puts("number: " <> Integer.to_string(n))
  end
end
