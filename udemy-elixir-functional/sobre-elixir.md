# Elixir CLI basic

- **elixirc** (Elixir compiler) Basicamente gera um .beam que a maquina do Erlang entenda, podendo ser carregada usando o comando iex no diretorio correspondente;
- **eleixir** Usamos para com os arquivos .exs que ums script elixir e podemos gerar o resultado do codigo usando a interpretando o codigo;

```bash
$elixirc name.ex
  | [+] *.beam
$elixir name.exs
  | result
``` 

# Tipos primitivos


## Atomos
Os atomos é quando o valor obtem o mesmo nome da variavel um exemplo muito bom são os booleanos
Um exemplo simples em JS e atribuição da seguinte forma:
```javascript
const hello = "hello"; // O seu valor da variavel é o mesmo do nome da mesma
```
```elixir
:true === true
:false === false

is_atom(true) # true
```

## Listas
```elixir
["Murillo", 22, 85.0]
```
Lista encadeada no elixir não é vetor de outras linguagens ou seja não tem o index de cada posição.

<img src="https://miro.medium.com/max/1300/1*ejbj1auh_Nxg_kmuuSGUSA.jpeg" />

## Tuplas
Tuplas usam o mesmo conceito de arrays e vetores de outras linguagens send assim as tuplas tem as suas posições partindo do zero.
Podemos usar a função `elem/2` para descobrir o que tem em uma posição da tuplas

```elixir
tp = { 41, :yes, "hello", 67.32, true }

elem(tp, 2) # :yes
```

## Capture Operator
Podemos usar o capture operator para poder assinar de outras forma funções anômimas como estão no exemplo a baixo:

```elixir
upcase = fn string -> String.upcase(string) end
upcase.("hello, world!")
upcase = &String.upcase/1
upcase.("hello, world!")
```

Quando escrevemos um função anômima podemos escrever com base na ordem dos argumentos dessa forma:
```elixir
sum = fn (a, b) -> a + b end
sum = &(&1 + &2)
# or
sum = & &1 + &2
```

## Pipe Operator
Para usar uma sintaxe mais leve é tanto de se entender quanto de se visualizar oos piper são muito bem vindos no mundo elixir e em outras linguagens 100% funcionais, digamos assim como tudo no elixir são expressões ou seja tem retorno podemos passa o retorno de algo como primeiro argumento do que em depois do piper como no exemplo a baixo:
```elixir
String.lenght("Olá") |> IO.puts
# IO.puts(String.legth("Ola mundo"))
```

## Pin Operator
Usamos para que o elixir verifique o valor do Match antes para evitar que ocorrar um rebind podemos usa-lo da seguinte forma:

```elixir
{a,b} = {2,110}  
{a,^b} = {10,110}

# Rebind pode ocorrer no "a" tranquilamente mas o "b" se ocorrerá o rebind se o valores forém os mesmos exemplo de matching com error
{a,^b} = {10,89}
# O valor de "b" atual é 110 por isso Parttern matching vai retorna error
```

## keyword list
Basicamente é uma lista de tuplas, em uma sintaxê melhor ainda é uma chave e um valor por "posição" da lista. Obrigatoriamente temos que ter um Atomo e valor (sendo qualquer dos tipos primitivos da linguagem) por ser uam lista encadeada ela vai permitir chaves repetidas por isso a ordem importa, sempre vai retorna o primeira chave que encontrar;

```elixir
[a: 22, b: 2] == [{:a, 22}, {:b, 2}]
[nome: "Murillo", idade: 22]
```

## Maps
São parecidas com Keyword list porém são indexadas é não permitem valores iguais e a chave pode ser qualquer tipo de dados e não necessariamente um átomo.
```elixir
m = %{:a => 1, 2 => :b}
n = %{"z" => 5, 8 => true}

m[2] #:b
n["z"] # 5

# Sintaxe do átomo quando ele for a chave
m.a


```

## Tail call Otimization
Uma forma de escrever recursões que não precisará retorna os valores resolvendo todo na "Ida" vai chamando ela  mesmo e resolvendo o problema sem precisar voltar, exemplo claro disso esta no diretorio `09/tc_factorial_tr.ex`

