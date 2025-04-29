defmodule Main do
  def generate_random_number do
    1..100 |> Enum.random()
  end

  def read_input do
    n = IO.gets("数字を入力してください: ") |> String.trim()

    case Integer.parse(n) do
      {number, _rest} ->
        number

      :error ->
        read_input()
    end
  end

  def main do
    n = read_input() |> Integer.to_string()
    IO.puts("あなたの入力した数字は、" <> n <> " です。")
  end
end
