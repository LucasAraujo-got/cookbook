puts"Bem vindo ao Cookbook, sua rede social de receitas!"

receitas = []

puts"[1] Para cadastrar uma receita."
puts"[2] Ver todas as receitas."
puts"[3] Sair"

print "Escolha uma opção: "
opcao = gets.to_i()

while(opcao != 3) do
    if(opcao == 1)
        puts"Digite o nome da receita:"
        nome = gets.chomp()
        receitas << nome
        puts
        puts"Receita #{nome} cadastrada com sucesso!"
        puts
    elsif(opcao == 2)
        puts"======== Receitas cadastradas com sucesso! ========"
        puts receitas
        puts
    else
        puts "Opção inválida"
    end
    puts"[1] Para cadastrar uma receita."
    puts"[2] Ver todas as receitas."
    puts"[3] Sair"

    print "Escolha uma opção: "
    opcao = gets.to_i()
end

puts "Obrigado por usar o Cookbook, Até logo!"