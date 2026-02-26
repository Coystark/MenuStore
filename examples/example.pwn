// Example store script for MenuStore (English)
#include <a_samp>
#include <MenuStore>

// Optional: define localization (defaults to English)
// #define MENUSTORE_PTBR

CMD:store(playerid)
{
    MenuStore_AddItem(playerid, 1, 342, "Grenade", 500, "Throw to explode.", 200);
    MenuStore_AddItem(playerid, 2, 344, "Molotov", 500, "Throw to set things on fire.", 200);
    MenuStore_AddItem(playerid, 3, 346, "9mm Pistol", 500, "Low-power pistol.");
    MenuStore_AddItem(playerid, 4, 347, "Silenced 9mm", 500, "Low-power pistol with suppressor.");
    MenuStore_AddItem(playerid, 5, 348, "Desert Eagle", 500, "High-power pistol.");
    MenuStore_AddItem(playerid, 6, 349, "Shotgun", 500, "Standard shotgun.");
    MenuStore_AddItem(playerid, 7, 350, "Sawnoff", 500, "Powerful sawed-off shotgun.");
    MenuStore_AddItem(playerid, 8, 351, "Combat Shotgun", 500, "High-power shotgun.");
    MenuStore_AddItem(playerid, 9, 352, "Micro SMG", 500, "Submachine gun.");
    MenuStore_AddItem(playerid, 10, 353, "MP5", 500, "Submachine gun.");
    MenuStore_AddItem(playerid, 11, 355, "AK-47", 500, "Powerful rifle.");
    MenuStore_AddItem(playerid, 12, 356, "M4", 500, "Powerful rifle.");
    MenuStore_AddItem(playerid, 13, 372, "Tec-9", 500, "Powerful SMG.");
    MenuStore_AddItem(playerid, 14, 357, "Country Rifle", 500, "Standard rifle.");
    MenuStore_AddItem(playerid, 15, 358, "Sniper Rifle", 500, "High-power sniper rifle.");

    MenuStore_Show(playerid, Weapon_Shop, "Weapon Shop");
    return 1;
}

Store:Weapon_Shop(playerid, response, itemid, modelid, price, amount, itemname[])
{
    if(!response) return true;
    if(GetPlayerMoney(playerid) < price) {
        SendClientMessage(playerid, -1, "You do not have enough money.");
        return true;
    }

    GivePlayerWeapon(playerid, GetWeaponIDFromModel(modelid), 200 * amount);

    new string[128];
    format(string, 128, "You bought %dx %s", amount, itemname);
    SendClientMessage(playerid, -1, string);

    GivePlayerMoney(playerid, -price);
    return true;
}

stock GetWeaponIDFromModel(modelid)
{
    new idweapon;
    switch(modelid)
    {
        case 342: idweapon = 16; // Grenade
        case 344: idweapon = 18; // Molotov
        case 346: idweapon = 22; // 9mm
        case 347: idweapon = 23; // Silenced 9mm
        case 348: idweapon = 24; // Desert Eagle
        case 349: idweapon = 25; // Shotgun
        case 350: idweapon = 26; // Sawnoff
        case 351: idweapon = 27; // Combat Shotgun
        case 352: idweapon = 28; // Micro SMG
        case 353: idweapon = 29; // MP5
        case 355: idweapon = 30; // AK-47
        case 356: idweapon = 31; // M4
        case 372: idweapon = 32; // Tec-9
        case 357: idweapon = 33; // Country Rifle
        case 358: idweapon = 34; // Sniper Rifle
        case 359: idweapon = 35; // RPG
        case 360: idweapon = 36; // HS Rocket
        case 361: idweapon = 37; // Flamethrower
        case 362: idweapon = 38; // Minigun
        case 363: idweapon = 39; // Satchel Charge
        case 365: idweapon = 41; // Spraycan
        case 366: idweapon = 42; // Fire Extinguisher
        case 367: idweapon = 43; // Camera
    }
    return idweapon;
}
