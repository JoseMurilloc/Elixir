defmodule Salario do
  def calculo_do_bonus(porcentagem) do
    fn(salario) -> salario * porcentagem end
  end
end

# bonus_para_gerente = Salario.calculo_do_bonus(1.05)
# bonus_para_gerente.(1000)
# => 1050.0
# Salario.calculo_do_bonus(1.05).(1000)