struct Action {
    let text: String
    let consequence: Consequence
}

struct Consequence {
    let title: String
    let text: [String]
    let actions: [Action]
}

// MARK: Level 12
let l12a = Consequence(
    title: "Vou é fugir. Minha coca, pô",
    text: ["Lembre bem do seu histórico de atleta...",
           "Mesmo com o morador de rua deitado no chão, Naomi ainda perderia. Escolha uma opção que pode minimamente dar certo dessa vez."],
    actions: [
        Action(
            text: "Só um golinho, quero o resto de volta",
            consequence: l12b
        ),
        Action(
            text: "Fica com tudo de uma vez, vai",
            consequence: l12c
        )
    ]
)

let l12b = Consequence(
    title: "Só um golinho, quero o resto de volta",
    text: ["O que era para ser só um golinho acabou virando a lata toda, pois o homem riu da cara de Naomi e tomou tudo num gole só", "Então, derrotada, com a calça suja de lama, sem dignidade e sem coca cola, Naomi retorna a sua casa e finaliza cedo o dia mais azarado de sua vida.", "9 anos depois, ela nem consegue lembrar de como foi a missa, mas lembra de todo o resto do dia e da bronca que tomou de seu pai por ter gastado dinheiro demais com comida." ],
    actions: [])

let l12c = Consequence(
    title: "Fica com tudo de uma vez, vai",
    text: ["Então, derrotada, com a calça suja de lama, sem dignidade e sem coca cola, Naomi retorna a sua casa e finaliza cedo o dia mais azarado de sua vida.", "9 anos depois, ela nem consegue lembrar de como foi a missa, mas lembra de todo o resto do dia e da bronca que tomou de seu pai por ter gastado dinheiro demais com comida."],
    actions: [])

// MARK: Level 11

let l11a = Consequence(
    title: "Tentar recuperar a comida do chão",
    text: ["A vergonha de pegar a comida do chão já era grande, mas virou grande demais para continuar quando viu que todo mundo estava a encarando."],
    actions: [
        Action(text: "Pegar só a latinha de coca e ir embora", consequence: l11b)
    ])

let l11b = Consequence(
    title: "Pegar só a latinha de coca e ir embora",
    text: ["Finalmente, indo para casa, Naomi está tomando sua coquinha feliz, quando um morador de rua a intercepta na rua pedindo dinheiro.", "Ela responde que não tem nada, e ele pede então um gole da sua coca."],
    actions: [
    Action(
        text: "Vou é fugir. Minha coca, pô",
        consequence: l12a
    ),
    Action(
        text: "Só um golinho, quero o resto de volta",
        consequence: l12b
    ),
    Action(
        text: "Fica com tudo de uma vez, vai",
        consequence: l12c
    )
    ]
)

// MARK: Level 10

let l10a = Consequence(
    title: "O prato redondo e sem graça",
    text: ["Naomi encheu seu prato de comida, pensando que finalmente seu dia iria melhorar. Encheu tanto que compensava ter ido no buffet livre.", "Paga a conta com ódio no coração e saiu andando. Mais uma vez distraída, ela tropeça no meio do caminho e dá um trupicão que derruba a bandeja inteira no chão."],
    actions: [
        Action(
            text: "Tentar recuperar a comida do chão",
               consequence: l11a),
        Action(
            text: "Pegar só a latinha de coca e ir embora",
            consequence: l11b)
    ]
)

let l10b = Consequence(
    title: "O prato oval e bonito",
    text: ["Eis que o prato oval e bonito era o prato do buffet livre, e Naomi precisa pagar um valor muito mais alto porque escolheu o errado.", "Paga com ódio no coração e sai andando. Mais uma vez distraída, ela tropeça no meio do caminho e dá um trupicão que derruba a bandeja inteira no chão."],
    actions: [
        Action(
            text: "Tentar recuperar a comida do chão",
               consequence: l11a),
        Action(
            text: "Pegar só a latinha de coca e ir embora",
            consequence: l11b)
    ]
)

// MARK: Level 9

let l9a = Consequence(
    title: "Buffet de comida chinesa",
    text: ["Têm duas opções de prato no início do buffet. Qual vai ser?"],
    actions: [
        Action(
            text: "O prato redondo e sem graça",
            consequence: l10a),
        Action(
            text: "O prato oval e bonito",
            consequence: l10b)
    ]
)

let l9b = Consequence(
    title: "Pastel",
    text: ["Durante seus 16 anos de vida, Naomi sempre ouviu sua mãe ensinando a comer pastel: cortar um pedacinho em cada canto e assoprar para tirar o vapor quente de dentro.",
        "Como a boa adolescente rebelde que era, ela resolveu não cortar o segundo pedacinho e acabou queimando a lingua tão feio que não conseguia mais comer o pastel.",
        "Naomi então desistiu, e resolveu pegar só seu refrigerante e ir embora.",
        "Finalmente, indo para casa, Naomi está tomando sua coquinha feliz, quando um morador de rua a intercepta na rua pedindo dinheiro.",
        "Ela responde a verdade: que não tem nada. Ele pede um gole da sua coca."
    ],
    actions: [
        Action(
            text: "Vou é fugir. Minha coca, pô", consequence: l12a),
        Action(
            text: "Só um golinho, quero o resto de volta", consequence: l12b),
        Action(
            text: "Fica com tudo de uma vez, vai", consequence: l12c)
    ]
)


// MARK: Level 8

let l8a = Consequence(
    title: "Xingar o universo até não conseguir mais",
    text: ["Após descontar suas energias negativas e receber olhares feios de muitos pais de crianças que levavam seus filhos para o colégio, Naomi decide:"],
    actions: [
        Action(
            text: "Continuar procurando um táxi",
            consequence: l8b),
        Action(
            text: "Desistir, ir a pé e almoçar no caminho",
            consequence: l8c)
    ]
)

let l8b = Consequence(
    title: "Continuar procurando um táxi",
    text: ["Naomi passou meia hora esperando um táxi. Não chegou nenhum táxi, mas com certeza chegou sua fome.", "Naomi então resolve ir a pé até um mercado no caminho do colégio até sua casa que tinha uma praça de alimentação. Chegando lá, tem que escolher:"],
    actions: [
        Action(
            text: "Buffet de comida chinesa",
            consequence: l9a),
        Action(
            text: "Pastel",
            consequence: l9b)
    ]
)

let l8c = Consequence(
    title: "Desistir e ir a pé e almoçar no caminho",
    text: ["Naomi então resolve ir a pé até um mercado no caminho do colégio até sua casa que tinha uma praça de alimentação. Chegando lá, tem que escolher:"],
    actions: [
        Action(
            text: "Buffet de comida chinesa",
            consequence: l9a),
        Action(
            text: "Pastel",
            consequence: l9b)
    ]
)

// MARK: Level 7


let l7a = Consequence(
    title: "Ir a pé até um restaurante e gastar a grana com comida",
    text: ["Naomi então vai até um mercado no caminho do colégio até sua casa que tinha uma praça de alimentação.",
           "Fez o caminho tão distraída com seu mau humor que não viu que tinha uma poça cheia de barro enorme em seu caminho e acabou pisando nela.",
           "Chegando no mercado, teve que escolher:"],
    actions: [
        Action(
            text: "Buffet de comida chinesa",
            consequence: l9a),
        Action(
            text: "Pastel",
            consequence: l9b)
    ]
)

let l7b = Consequence(
    title: "Preservar o pé e ir de táxi para casa",
    text: ["Ela foi, então, para a frente do colégio pedir um taxi.",
           "Estava tão distraída com seu mau humor que não viu que tinha uma poça cheia de barro enorme em seu caminho e acabou pisando nela."],
    actions: [
        Action(
            text: "Xingar o universo até não conseguir mais",
            consequence: l9a),
        Action(
            text: "Continuar procurando um táxi",
            consequence: l8b),
        Action(
            text: "Desistir, ir a pé e almoçar no caminho",
            consequence: l8c)
    ]
)

let l7c = Consequence(
    title: "Já que estou suja mesmo, continuar a pé",
    text: ["Naomi então resolve ir a pé até um mercado no caminho do colégio até sua casa que tinha uma praça de alimentação.",
           "Chegando lá, tem que escolher:"],
    actions: [
        Action(
            text: "Buffet de comida chinesa",
            consequence: l9a),
        Action(
            text: "Pastel",
            consequence: l9b)
    ]
)

// MARK: Level 6

let l6a = Consequence(
    title: "Ir para um canto e chorar sozinha",
    text: ["Após chorar em seu canto sozinha, procurando algum lenço para assoar o nariz na bolsa, Naomi acabou encontrando sua carteira.",
        "Após se acalmar, foi dar um abraço em suas amigas que nem notaram sua ausência, e decidiu ir para casa."],
    actions: [
        Action(
            text: "Ir a pé até um restaurante e gastar a grana com comida",
            consequence: l8c),
        Action(
            text: "Preservar o pé e ir de táxi para casa",
            consequence: l8a)
    ]
)


let l6b = Consequence(
    title: "Engolir a tristeza pois já é quase universitária",
    text: ["Naomi acabou embarcando no modo universitário real: foi para um canto chorar sozinha.",
        "Procurando algum lenço para assoar o nariz na bolsa, acabou encontrando sua carteira.",
        "Após se acalmar, foi dar um abraço em suas amigas que nem notaram sua ausência, e decidiu ir para casa."],
    actions: [
        Action(
            text: "Ir a pé até um restaurante e gastar a grana com comida",
            consequence: l8c),
        Action(
            text: "Preservar o pé e ir de táxi para casa",
            consequence: l8a)
    ]
)

let l6c = Consequence(
    title: "Ir embora chorar em casa sozinha",
    text: ["Naomi saiu muito emburrada do colégio, deu um abraço em suas amigas.",
           "Atravessou a rua tão distraída com seu mau humor que não viu que tinha uma poça cheia de barro enorme em seu caminho e acabou pisando nela."],
    actions: [
        Action(
            text: "Xingar o universo até não conseguir mais",
            consequence: l8a),
        Action(
            text: "Já que estou suja mesmo, continuar a pé",
            consequence: l7c)
    ]
)

// MARK: Level 5

let l5a = Consequence(
    title: "Sair correndo e dar calote",
    text: ["Sério agora, lembre de seu histórico de \"\"atleta\"\" (sim, entre duas aspas). Escolha uma opção que pode minimamente dar certo dessa vez:"],
    actions: [
        Action(
            text: "Tentar resolver na conversa",
            consequence: l5b),
        Action(
            text: "Ligar para uma amiga pedindo socorro",
            consequence: l5c)
    ]
)

let l5b = Consequence(
    title: "Tentar resolver na conversa",
    text: ["O plano de resolver na conversa poderia ter dado certo, caso o taxista não fosse um cara tão mau humorado.",
        "Por sorte, sua amiga, Ana, estava passando por ali e acabou pagando a sua conta.",
        "Naomi foi, então, até a capela do colégio, falou sua parte, e ficou muito triste que ninguém da sua família estava ali naquele momento."],
    actions: [
        Action(
            text: "Ir para um canto e chorar sozinha",
            consequence: l6a),
        Action(
            text: "Engolir a tristeza pois já é quase universitária",
            consequence: l6b),
        Action(
            text: "Ir embora chorar em casa sozinha",
            consequence: l6c)
    ]
)

let l5c = Consequence(
    title: "Ligar para uma amiga pedindo socorro",
    text: ["Sua amiga, Ana, quebrou o galho e pagou o táxi.",
        "Ufa, parece que Naomi nem estava tão atrasada.",
        "Ela foi, então, até a capela do colégio, falou sua parte, e ficou muito triste que ninguém da sua família estava ali naquele momento."],
    actions: [
        Action(
            text: "Ir para um canto e chorar sozinha",
            consequence: l6a),
        Action(
            text: "Engolir a tristeza pois já é quase universitária",
            consequence: l6b),
        Action(
            text: "Ir embora chorar em casa sozinha",
            consequence: l6c)
    ]
)


let l5d = Consequence(
    title: "Implorar para a cantina vender fiado",
    text: ["O papo estava indo super bem, até sua amiga, Ana, aparecer berrando \"FINALMENTE TE ENCONTREI! VOCÊ TÁ ATRASADA PRA MISSA!\"",
        "Nenhum dono de cantina é maluco de vender fiado para aluno de terceirão.",
        "Pelo menos a Ana acabou pagando a sua conta.",
        "Naomi foi, então, até a capela do colégio, falou sua parte, e ficou muito triste que ninguém da sua família estava ali naquele momento."],
    actions: [
        Action(
            text: "Ir para um canto e chorar sozinha",
            consequence: l6a),
        Action(
            text: "Engolir a tristeza pois já é quase universitária",
            consequence: l6b),
        Action(
            text: "Ir embora chorar em casa sozinha",
            consequence: l6c)
    ]
)

// MARK: Level 4

let l4a = Consequence(
    title: "Pão de queijo",
    text: ["Naomi comeu seu pão de queijo, triste por ter escolhido um lanche pequeno de 5 reais que ainda por cima estava borrachudo.", "Quando foi pagar, não encontrava a carteira de jeito nenhum dentro da mala. Haviam três saídas possíveis:"],
    actions: [Action(
                text: "Sair correndo e dar calote",
                consequence: l5a),
              Action(
                  text: "Implorar para a cantina vender fiado",
                  consequence: l5d),
              Action(
                  text: "Ligar para uma amiga pedindo socorro",
                  consequence: l5c)
    ]
)

let l4b = Consequence(
    title: "Folhado sabor pizza",
    text: ["Péssima escolha. Não sei porque ainda tentava - toda vez que Naomi escolhia sabor pizza ela queimava a lingua com o tomate extremamente quente do recheio.", "Quando foi pagar, não encontrava a carteira de jeito nenhum dentro da mala. Haviam três saídas possíveis:"],
    actions: [Action(
                text: "Sair correndo e dar calote",
                consequence: l5a),
              Action(
                  text: "Implorar para a cantina vender fiado",
                  consequence: l5d),
              Action(
                  text: "Ligar para uma amiga pedindo socorro",
                  consequence: l5c)
    ]
)

let l4c = Consequence(
    title: "Croissant de chocolate",
    text: ["Existe alguém no mundo que consegue comer um croissant sem se sujar?", "Como se não bastasse ter feito uma mancha enorme de chocolate em sua camisa, Naomi sujou também seu rosto. Estava tentando limpar a bagunça quando seu crush passou e olhou com cara de desdém. Que dia ótimo.", "Para piorar, quando foi pagar, Naomi não encontrava a carteira de jeito nenhum dentro da mala. Haviam três saídas possíveis:"],
    actions: [Action(
                text: "Sair correndo e dar calote",
                consequence: l5a),
              Action(
                  text: "Implorar para a cantina vender fiado",
                  consequence: l5d),
              Action(
                  text: "Ligar para uma amiga pedindo socorro",
                  consequence: l5c)
    ]
)

// MARK: Level 3


