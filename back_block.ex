line_no = 50

if (line_no == 50) do
  IO.puts "new-page\f"
  line_no = 0
end
IO.puts line_no

integer = 2
atom =
  case integer do
    1 -> :one
    2 -> :two
  end

IO.puts atom