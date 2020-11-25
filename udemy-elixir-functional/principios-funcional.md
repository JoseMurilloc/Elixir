# Principios da programação funcionais

## Funções puras
  Para uma função ser pura ele não pode obter nenhum efeito colateral, ou seja sempre que e enviado os mesmo parametros sempre obterá o mesmo resultados, nunca influênciando nas váriaveis globais da aplicação.

```elixir
def sum(number1, number2) do
  number1 + number2
end

sum(1, 3) # Resultado sempre será o mesmo com os mesmo argumentos no caso 1 e 2
```

## Funções de primeria class
  Funções de primeira classe são as funções que podemos passar por parametro, geralmente usamos no formato de lambda pois lambdas são as funções anônimas

```elixir

```

## Imutabilidade de variaveis
  Basicamente é o conceito usado para dizer que as variaveis na verdade são constantes e se caso quiser mudar precisamos usar uma reatribuição, exemplo simples em elixir:

```elixir
  hello = "hello"

  def world(hello) do 
    Hello <> " World"
  end

  IO.puts(hello) # "Hello"
```

## Recursão
  Quando usamos funções chamando a ela mesma com uma condição de retorno.

## Chama pelo nome (Noscript evaluation)
  Bem geralmente nas outros linguagens que não são funcionais assim que você declara a variavel você tem ele a disposição na memoria para usa-la, porém isso não acontece com as linguagens funcionais porque elas so alocam os recursos para uso quando ele realmente for chamada "Chama pelo nome"

## Statements
Esse conceito abrange o fato que toda linha codigo tem um retorno um exemplo simples é o seguinte. Com o objetivo de **reduzir o nome de variaveis**

`Pense como if com retorno dentro`
```elixir
IO.puts("O valor de retorno é #{x=1}")
# Isso vai retorna "O valor de retorno é 1"

# Diferente por exemoplo do Javacript que retorna undefined
```

## Parttern matching
É uma comparação de equações, e ajuda bastante a não ter tantas atribuções de variaveis de forma desnecessarias, usando padrões de correspondecias 
Se as estruturas não sejam correspondente ocorrerá um error
Para começamos a entender Pattern Matching preciosamos entender todas as
variaveis no elixir apontam para seus valores e não contém seus valores
e que o simbolo de igualdade aqui usasse para da Match Operator

```elixir
[a, b, c] = [1, 2 ,3]
IO.puts(a) # 1

{a, b, c} = {:jackson, "pires", 123}
# a => :jackson

# Um formato especifico para lista
[cabeca | cauda] = [1, 2, 3]
# cabelo => [1]
# cauda => [2, 3]

```

<img src="https://i.pinimg.com/474x/56/28/74/56287435dba7562931d77e5ee0ca7c03.jpg" style="width: 250px"/>
<br>
<small>Imagem para usar correspondente</small>
