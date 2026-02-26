# MenuStore
MenuStore es un include ligero para SA-MP que permite crear tiendas configurables dentro del juego usando Textdraws.

Características
- Crear tiendas multipágina con descripciones y vistas previas
- Carrito incorporado con ranuras limitadas y visualización del valor total
- Soporte opcional para easyDialog cuando está disponible
- Cadenas localizables (por defecto en inglés; PT-BR y Español incluidos)

Vista previa
![MenuStore](https://i.imgur.com/gH1k6t4.jpg)

Enlaces rápidos
- README en inglés: [README.md](README.md)
- Português (pt-BR): [README.pt-BR.md](README.pt-BR.md)
- Español: [README.es.md](README.es.md)
- Script de ejemplo: [examples/example.pwn](examples/example.pwn)

Documentación
https://sampforum.blast.hk/showthread.php?tid=644913

Inicio rápido
1. Coloca el include en la carpeta `includes` y añade `#include <MenuStore>` en tu script.
2. Añade items con `MenuStore_AddItem(...)` antes de mostrar la tienda al jugador.
3. Muestra la tienda usando `MenuStore_Show(playerid, StoreID, "Store Name");`

Ejemplo (muy corto)
1. Añade items:

```pawn
MenuStore_AddItem(playerid, 1, 342, "Granada", 500, "Lanzar para explotar.", 200);
```

2. Muestra la tienda:

```pawn
MenuStore_Show(playerid, Weapon_Shop, "Tienda de Armas");
```

3. Implementa el callback de la tienda (ver [examples/example.pwn](examples/example.pwn) para un ejemplo completo):

```pawn
Store:Weapon_Shop(playerid, response, itemid, modelid, price, amount, itemname[])
```

Notas
- El include proporciona textos por defecto en Portugués y Español cuando `MENUSTORE_PTBR` o `MENUSTORE_SPANISH` se definen antes de incluir.
- Mantén `MS_MAX_ITEMS` y otras macros configurables según lo necesites.