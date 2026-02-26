# MenuStore
MenuStore is a lightweight SA-MP include that lets you create configurable in-game stores using Textdraws.

Features
- Create multi-page item stores with descriptions and previews
- Built-in cart with limited slots and total value display
- Optional easyDialog support if available
- Localizable strings (English by default; PT-BR and Spanish provided)

Preview
![MenuStore](https://i.imgur.com/gH1k6t4.jpg)

Quick links
- English README: [README.md](README.md)
- Português (pt-BR): [README.pt-BR.md](README.pt-BR.md)
- Español: [README.es.md](README.es.md)
-- Example store script: [examples/example.pwn](examples/example.pwn)

Documentation
https://sampforum.blast.hk/showthread.php?tid=644913

Quick start
1. Place the include in your `includes` folder and add `#include <MenuStore>` to your script.
2. Add items with `MenuStore_AddItem(...)` before showing a store to a player.
3. Show the store using `MenuStore_Show(playerid, StoreID, "Store Name");`

Example (very short)
1. Add items:

```pawn
MenuStore_AddItem(playerid, 1, 342, "Grenade", 500, "Throw to explode.", 200);
```

2. Show the store:

```pawn
MenuStore_Show(playerid, Weapon_Shop, "Weapon Shop");
```

3. Implement the store callback (see [examples/newStore_example.pwn](examples/example.pwn) for a full sample):

```pawn
Store:Weapon_Shop(playerid, response, itemid, modelid, price, amount, itemname[])
```

Notes
- The include provides optional Portuguese and Spanish default text when `MENUSTORE_PTBR` or `MENUSTORE_SPANISH` are defined before including.
- Keep `MS_MAX_ITEMS` and other macros configurable in your project if needed.