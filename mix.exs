{:ok,file} = File.open("mix.exs")

{:error,:enoent} = File.open("notafile")
