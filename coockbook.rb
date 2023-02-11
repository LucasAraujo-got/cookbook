puts"Bem vindo ao CookBook, sua rede social de receitas!"

receitas = []

while(true) do
    puts"Digite o nome da receita:"
    nome = gets.chomp()

    receitas << nome

    puts
    puts"Receita #{nome} cadastrada com sucesso!"
    puts
    puts"======== Receitas cadastradas com sucesso! ========"
    puts receitas
    puts

end