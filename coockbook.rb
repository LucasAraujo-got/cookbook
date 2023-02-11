INSERIR_RECEITA = 1
VISUALIZAR_RECEITAS = 2
BUSCAR_RECEITAS = 3
SAIR = 4



def bem_vindo()
    puts"Bem vindo ao Cookbook, sua rede social de receitas!"
end

def menu()
    puts"[#{INSERIR_RECEITA}] Para cadastrar uma receita."
    puts"[#{VISUALIZAR_RECEITAS}] Ver todas as receitas."
    puts"[#{BUSCAR_RECEITAS} Para procurar por receitas."
    puts"[#{SAIR}] Sair"

    print "Escolha uma opção: "
    return gets.to_i()
end

def inserir_receita()
    puts"Digite o nome da receita:"
    nome = gets.chomp()

    puts"Digite o tipo da receita:"
    tipo = gets.chomp()

    puts
    puts"Receita #{nome} cadastrada com sucesso!"
    puts 
    return { nome: nome, tipo: tipo}   
end

def imprimir_receitas(receitas)
    puts"======== Receitas cadastradas com sucesso! ========"
    receitas.each do |receita|
        puts "#{receita[:nome]} - #{receita[:tipo]}"
    end
    puts
    if receitas.empty?
        puts"Nenhuma receita cadastrada."
        puts
    end
end

def BUSCAR_RECEITAS()
    puts
    puts"WIP"
    puts
end

bem_vindo()

receitas = []

opcao = menu()

loop do
    if(opcao == INSERIR_RECEITA)
    receitas << inserir_receita()
    elsif(opcao == VISUALIZAR_RECEITAS)
        imprimir_receitas(receitas)
    elsif(opcao == BUSCAR_RECEITAS)
        puts
        puts"Em Desenvolvimento."
        puts
    elsif(opcao == SAIR)
        break
    else
        puts "Opção inválida"
    end

    opcao = menu()
    
end

puts
puts "Obrigado por usar o Cookbook, Até logo!"