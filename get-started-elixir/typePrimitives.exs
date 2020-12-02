
# --- Hello Elixir

name = "Murilo"
age = 21
weigth = 85.56
shills = ["Javascipt", "Typescript", "Elixir"]
:atom
tuple = { 1, 2, 3 }

tuple_size = tuple_size(tuple)
string_size = String.length(name)

IO.inspect "O tamanho da tupla é #{tuple_size}"
IO.inspect "O tamanho da string é #{string_size}"

IO.inspect "[Name: #{name} | Age: #{age} | Weigth: #{weigth}]"
IO.inspect shills
IO.inspect tuple

# Basic Operators

list_one = [1, 2, 3]
list_two = [4, 5, 6]

IO.inspect list_one ++ list_two
IO.inspect list_one -- [1]

IO.inspect "#{false or true}, #{false and true}, #{false and false}"

IO.inspect 1 === 1.0
