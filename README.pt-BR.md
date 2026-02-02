# MenuStore
MenuStore é um include leve para SA-MP que permite criar lojas configuráveis no jogo usando Textdraws.

Recursos
- Criação de lojas com múltiplas páginas, descrições e previews
- Carrinho integrado com limite de slots e exibição do valor total
- Suporte opcional ao easyDialog quando disponível
- Strings localizáveis (padrão em inglês; PT-BR e Espanhol incluídos)

Visual
![MenuStore](https://i.imgur.com/gH1k6t4.jpg)

Links rápidos
- README em inglês: [README.md](README.md)
- README em Português (pt-BR): [README.pt-BR.md](README.pt-BR.md)
- README em Español: [README.es.md](README.es.md)
- Exemplo de loja: [examples/example.pwn](examples/example.pwn)

Documentação
https://sampforum.blast.hk/showthread.php?tid=644913

Como começar (resumo)
1. Coloque o include na pasta `includes` e adicione `#include <MenuStore>` ao seu script.
2. Adicione itens com `MenuStore_AddItem(...)` antes de mostrar a loja ao jogador.
3. Mostre a loja usando `MenuStore_Show(playerid, StoreID, "Store Name");`

Exemplo (muito curto)
1. Adicione itens:

```pawn
MenuStore_AddItem(playerid, 1, 342, "Granada", 500, "Lance para explodir.", 200);
```

2. Mostre a loja:

```pawn
MenuStore_Show(playerid, Weapon_Shop, "Loja de Armas");
```

3. Implemente o callback da loja (veja [examples/newStore_example.pwn](examples/example.pwn) para um exemplo completo):

```pawn
Store:Weapon_Shop(playerid, response, itemid, modelid, price, amount, itemname[])
```

Notas
- O include fornece textos padrão em Português e Espanhol quando `MENUSTORE_PTBR` ou `MENUSTORE_SPANISH` são definidos antes da inclusão.
- Mantenha `MS_MAX_ITEMS` e outras macros configuráveis conforme as necessidades do seu projeto.