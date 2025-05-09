defmodule Main do
  def main(_args \\ []) do
    # print logo
    print_logo()

    # The answer number.
    answer = generate_random_number()

    # game start
    start_game(answer)
  end

  def print_logo() do
    IO.puts("""

    ========================
    === Guess The Number ===
    ========================

    ----- START GAME -------
    """)
  end

  def start_game(answer) do
    # User input number.
    user_input = read_input()

    # Number judge.
    case judge(user_input, answer) do
      :correct ->
        IO.puts("----- GAME CLEAR! -------")
        IO.puts("正解! おめでとう!")

      :too_low ->
        IO.puts("数字が小さいです")
        start_game(answer)

      :too_high ->
        IO.puts("数字が大きいです")
        start_game(answer)
    end
  end

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

  def judge(input, answer) do
    cond do
      input == answer -> :correct
      input < answer -> :too_low
      input > answer -> :too_high
    end
  end
end
