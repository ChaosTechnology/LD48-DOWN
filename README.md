This game was programmed during [Ludum Dare 48](https://ldjam.com/events/ludum-dare/48).  

What is Ludum Dare?  
Short version: You have 72 hours. Build a game!

You can find the original submission [here](https://ldjam.com/events/ludum-dare/48/down-the-descend)!

# The Concept
*DOWN - The Descend* is a first person shooter that places you in a bottomless tower filled with weird creatures that thirst for your blood. You don't know how and you don't know why, but somehow you have to fight your way down...  
The number in the top left corner tells you how far you have already descended.

# The Arsenal

|                                                          |                                                                                                   |
| :------------------------------------------------------: | :-----------------------------------------------------------------------------------------------: |
| ![LD48][imgShotgun]                                      | A devastating gauge 12 pump action shotgun, that rips out the innards of everything in its way.   |
| A rocket launcher. No more explanation needed. __BOOM__  | ![LD48][imgRocketLauncher]                                                                        |
| ![LD48][imgSlingshot]                                    | A slingshot... But stones would be boring... What else could we shoot? Grenades!                  |

# Reloading
There are 3 different modes of how reloading is handled.
1. __Manual__  
You have to reload manually (see the controls section for inputs)
2. __OnEmpty__  
The weapon automatically reloads after you have fired your last shot.  
Might be useful if you tend to forget reloading your weapon, but also makes you less flexible.
3. __OnShootEmpty__  
The weapon automatically reloads when you try to fire it while its empty.

You can choose which mode you want to use in the game's settings menu (or the settings.ini file).  
Of course when using any auto reload mode you can still reload manually.  

# Encounters
|       |       |
| :---: | :---: |
| ![LD48][imgEnc] | This game has non optional encouters. When triggering an encounter a given amount of enemies will spawn and you have to defeat all of them to be able to go on. Additionally random spawns may still occur. The number in the top right corner tells you how many enemies are remaining.
| The blue plane at the top of the encounter room prevents you and encounter specific enemies from going back upstairs. This ensures that neither you nor your enemies can escape the battle. Any other enemies or entities may pass it. | ![LD48][imgEncBlue]
| ![LD48][imgEncRed] | The red plane at the bottom of the encounter is blocking your way forward. When entering it you will be teleported to a specific portal in the encounter room and take some damage. Enemies touching the plane will die instantly so it might be a good idea to lure them there and push them down using explosions or anything you come up with.
| The silver portal in every encounter room is your respawn point when touching the red barrier. This is a one way portal, so you can't enter it. | ![LD48][imgEncPortal]


# Pickups
There are pickups scattered across the whole tower.  
They supply you with the health or ammunition you need to survive.

|       |       |
| :---: | :---: |
| ![LD48][imgHealthPack] | You're wounded? Pick up a health pack to replenish some health. |
| This advanced health pack can replenish far more health than a regular health pack. But this doesn't happen instantly. Stand in it for a while to gradually heal your injuries. As soon as its supply has run out, it vanishes. | ![LD48][imgHealthBeacon] |
| ![LD48][imgShells] | Grants you 10 shotgun shells. |
| Grants you 3 rockets. | ![LD48][imgRockets] |
| ![LD48][imgGrenades] | Grants you 5 grenades. |

# Explosives
Apart from shooting projectiles you can also use explosions to damage your enemies.

|                                                          |                                                                                 |
| :------------------------------------------------------: | :-----------------------------------------------------------------------------: |
| ![LD48][imgBarrel]                                       | The barrels scattered around the arena explode when shot and deal heavy damage. |
| But beware, they also damage you, if you stand too close | ![LD48][imgBoom]                                                                |

# Damage
|                                                                                                       |                                      |
| :---------------------------------------------------------------------------------------------------: | :----------------------------------: |
| Additional bloodstains at the border of the screen indicate the direction from where you took damage. | ![LD48][imgDmg]                      |
| ![LD48][imgDeath]                                                                                     | When taking too much damage you die. |

# Portals
|                        |                        |                         |
| :--------------------: | :--------------------: | :---------------------: |
| ![LD48][imgPortalBlue] | ![LD48][imgPortalPink] | ![LD48][imgPortalGreen] |

Portals are a fast way to travel around an arena or evade enemies. Every portal (apart from the silver one) teleports you to another portal of the same color nearby. But keep in mind, that enemies could be lingering around on the other side. After using a portal it has a 3 second cooldown before it can be used again. As soon as the colored area is completely filled the cooldown has worn off.

# Miscellaneous
|       |       |
| :---: | :---: |
| ![LD48][imgLaunchPad] | Launch pads launch everything that enters their streams high over ground. This applies to you as a player as well as to enemies, barrels or other entities. |
| Enemies can fly what makes them harder to hit with ballistic weapons when they are high over ground. On the other hand you can stagger enemies by dealing heavy damage. Staggered enemies are unable to fly and fire for a while. Use this to your advantage, when they are hovering over a red barrier. | ![LD48][imgFlying] |

# Controls

| Action                         | Keyboard                 | Mouse          | Controller (XBox / Playstation) |
| :----------------------------  | :----------------------: | :------------: | :-----------------------------: |
| Walk                           | W,A,S,D or Arrow Keys    | -              | Left Stick                      |
| Turn                           | -                        | Move           | Right Stick                     |
| Jump                           | Space                    | -              | A / Cross                       |
| Double Jump                    | 2x Space                 | -              | 2x A / 2x Cross                 |
| Shoot                          | -                        | Left Button    | Right Trigger (RT / R2)         |
| Reload                         | R                        | Right Button   | X / Square                      |
| Pause                          | Escape                   | -              | Start                           |
| Restart (if dead)              | Enter                    | -              | Y / Triangle                    |
| Switch Weapon (Previous)       | Q                        | -              | Left Bumper (LB / L1)           |
| Switch Weapon (Next)           | E                        | -              | Right Bumper (RB / R1)          |
| Quick Switch (Shotgun)         | 1                        | -              | -                               |
| Quick Switch (Rocket Launcher) | 2                        | -              | -                               |
| Quick Switch (Slingshot)       | 3                        | -              | -                               |
| Take Screenshot                | Print                    | -              | Back / Share                    |
| Main Menu - Start Game         | -                        | Menu Button    | A / Cross                       |
| Main Menu - Settings           | -                        | Menu Button    | X / Square                      |
| Main Menu - End Game           | -                        | Menu Button    | Y / Triangle                    |
| Pause Menu - Start Game        | -                        | Menu Button    | A / Cross                       |
| Pause Menu - to Main Menu      | -                        | Menu Button    | X / Square                      |
| Pause Menu - End Game          | -                        | Menu Button    | Y / Triangle                    |

Apart from PlayStation and XBox controllers, every HID conform controller should work, but some may mix up some buttons.

# Tools
This game was programmed using C# as a programming language, our own game engine, OpenGL 3.3 for graphics and OpenAL for audio.

# Trouble Shooting
The game comes with a settings.ini file that allows you to customize some settings. You can also access these settings from the settings menu within the game. If you're having performance issues you can lower the solid world resolution as well as the transparency resolution. Transparency usually has a way larger impact than the solid world. You can also lower the number of correctly sorted layers of transparency, which has an even greater effect on performance.

[imgShotgun]:         https://github.com/ChaosTechnology/DOWN/blob/chaos/Images/Shotgun%20Reloading.png
[imgRocketLauncher]:  https://github.com/ChaosTechnology/DOWN/blob/chaos/Images/Rocket%20Launcher%20Reloading.png
[imgSlingshot]:       https://github.com/ChaosTechnology/DOWN/blob/chaos/Images/Slingshot.png
[imgEnc]:             https://github.com/ChaosTechnology/DOWN/blob/chaos/Images/Encounter%20Planes.png
[imgEncBlue]:         https://github.com/ChaosTechnology/DOWN/blob/chaos/Images/Encounter%20Plane%20Blue.png
[imgEncRed]:          https://github.com/ChaosTechnology/DOWN/blob/chaos/Images/Encouter%20Plane%20Red%20(killing%20Enemy).png
[imgEncPortal]:       https://github.com/ChaosTechnology/DOWN/blob/chaos/Images/Encounter%20Portal.png
[imgHealthPack]:      https://github.com/ChaosTechnology/DOWN/blob/chaos/Images/Pickup%20Health%20Pack.png
[imgHealthBeacon]:    https://github.com/ChaosTechnology/DOWN/blob/chaos/Images/Pickup%20Health%20Beacon.png
[imgShells]:          https://github.com/ChaosTechnology/DOWN/blob/chaos/Images/Pickup%20Shells.png
[imgRockets]:         https://github.com/ChaosTechnology/DOWN/blob/chaos/Images/Pickup%20Rockets.png
[imgGrenades]:        https://github.com/ChaosTechnology/DOWN/blob/chaos/Images/Pickup%20Grenades.png
[imgBoom]:            https://github.com/ChaosTechnology/DOWN/blob/chaos/Images/Explosion%20Damage.png
[imgDeath]:           https://github.com/ChaosTechnology/DOWN/blob/chaos/Images/Death.png
[imgDmg]:             https://github.com/ChaosTechnology/DOWN/blob/chaos/Images/Damage.png
[imgBarrel]:          https://github.com/ChaosTechnology/DOWN/blob/chaos/Images/Barrels.png
[imgFlying]:          https://github.com/ChaosTechnology/DOWN/blob/chaos/Images/Flying%20Enemies.png
[imgLaunchPad]:       https://github.com/ChaosTechnology/DOWN/blob/chaos/Images/LaunchPad.png
[imgPortalBlue]:      https://github.com/ChaosTechnology/DOWN/blob/chaos/Images/Portal%20Blue.png
[imgPortalGreen]:     https://github.com/ChaosTechnology/DOWN/blob/chaos/Images/Portal%20Green.png
[imgPortalPink]:      https://github.com/ChaosTechnology/DOWN/blob/chaos/Images/Portal%20Pink.png
