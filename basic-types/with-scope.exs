lp =
  with {:ok, file} = File.open("/etc/passwd"),
       # note: same name as above
       content = IO.read(file, :all),
       :ok = File.close(file),
       [_, uid, gid] = Regex.run(~r/^lp:.*?:(\d+):(\d+)/m, content) do
    "Group: #{gid}, User: #{uid}"
  end

# => Group: 26, User: 26
IO.puts(lp)
# => Now is the time
IO.puts(content)
