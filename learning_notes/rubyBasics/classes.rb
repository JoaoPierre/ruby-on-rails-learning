class Cachorro
  def latir
    puts "auau"
  end
end

class Gato
  def miar
    puts("miau")
  end
end

# cachorro = Cachorro.new
# cachorro.latir

# #Gato.new.miar
class Conta
end

class Banco
  def criar_nova_conta
    Conta.new
  end
end

# banco = Banco.new
# conta = banco.criar_nova_conta

class Pessoaa
  def definir_nome(nome_da_pessoa)
    # puts ("O novo nome é #{nome_da_pessoa}")
    @nome = nome_da_pessoa
  end

  def exibir_informaçoes
    puts("Nome: #{@nome}")
  end
end

pessoa = Pessoaa.new
pessoa.definir_nome("Joao")

# pessoa.exibir_informaçoes

# metodo construtor

class Pessoa
  def initialize(nome, idade)
    @nome = nome
    @idade = idade
  end

  def exibir_informaçoes
    puts("#{@nome} tem #{@idade} de idade.")
  end
end

pessoa = Pessoa.new("joao", 20)
# pessoa.exibir_informaçoes

# Métodos Getters e Setters

class Produto
  attr_accessor :fabricante
  attr_accessor :preço
  attr_accessor :nome

  def initialize
    @fabricante = "Apple"
    @codigo = 1234
  end
end

produto = Produto.new
produto.fabricante = "Loud"
# puts produto.fabricante

# metodos de instancia x metodos de classe

class Tempo
  def self.agora
    Time.now
  end
end

puts(Tempo.agora)
