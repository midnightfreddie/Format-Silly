[![Build status](https://ci.appveyor.com/api/projects/status/hfpmel46q7r7at9s?svg=true)](https://ci.appveyor.com/project/midnightfreddie/format-silly)


# But Why?

This is just one of those silly things that for some reason I suddenly had a need to apply unnecessary Unicode combining accents/glyphs to strings.

Then I realized this would be a decent excuse to do some test-driven development and create a module, neither of which I have really done yet but have been intending to do. And as I keep telling people who ask how to learn Powershell, just do something you have an interest in, even if it's stupid. So here we are: A module with a function to return strings with Unicode combining characters to the characters.

And now it's a collaborative project as clearly I'm not the only one with a need for decorated Unicode text.

## Example Output

It may not look right in the console or ISE, but if you copy and paste it into a browser text field or word processor it will look "right". Note that piping this to `clip` doesn't work because `clip.exe` doesn't handle Unicode.

	Import-Module FormatSilly
    Format-Silly "The quick brown fox jumped over the lazy dog."
    # TÌhÌ²eÍœ qÍ®uÍiÌ¾cÌ¨kÌµ bÍ«rÌ¤oÌžwÍ„nÌ¿ fÌ‰oÍ—xÍ¡ jÌ­uÌ”mÍ¯pÌ¹eÍ¬dÍ¨ oÍ‡vÌ›eÍ–rÌ’ tÌšhÍ‹eÍ lÌ®aÌzÌ™yÍŒ dÌ±oÌgÍ­.

`Set-Clipboard` works, though, if you have it as a module or built-in

    Format-Zalgo "The quick brown fox jumped over the lazy dog." | Set-Clipboard
    # Ţ̃̓͏̷̵͔͕̩̻̞̠̩̪̙̣̺͙͖͇̺̦͚̘̭ͣͬͤ̊ͯ͊̏̊͐̇͊ͮ̉̈͐ͥ̈́̑̌̓́͋̈̚͞h̨̡̧̢̛̺̥̠̼͚̯̞̫̯͙͖̱̖̞͖̫͔̙͒́͗ͯͪͧ̄̓ͮ̌͊̉̐ͣ͌̊̃̔̎̅̀ͪ̾̚͞͝͡ȩ̶̴̶̨̢͈̦͖͖̖͌̃͋̏ͥ̉̉́̂ͩ̈́͘̕͜͟҉̸͔̆͏̡̻͖̟̦͉̗̙̰ͬͩ͊̒ͯͬ̋͢͡͞ ̴̨̡̨̠̗̼̫͈͎̼͚̼̰͇̩̫͓̎̆͗ͤͥ͊ͭͦ̾ͣ̒́ͬ̓̾̐̾̒̾̆̌̏̾ͤͫͮ̚̚̚͘͠ͅq̴̶̢̪͕̲̭̤͍̩̃̆͐ͨ̿̿̓ͣ̀̉͏̸̧̧͎̤̝̗̭̜͍͍̻̠̠̣̣̈ͨ̎͌̉̅̊̐̈̊̉̚͟u̵̬̙͔̩͙͉̭̙̭͈͔̤̬͖̰͕̠ͩͮͯ̉͗̏́͌ͪͦ͂̈̀͊ͮ͆̉͒̊ͧͤ͌̄͘̚̕͘͟͝ͅ͏ͭi̴̷̷̧̳̮͔̤̗̙̫̘͕̱͙̖̻͎̲͔̦̿̅̍̃͂͗̌ͣ̄͗̀̀̇͐͆̀ͧ̄̇ͦ́ͫ̃̚͘͢͠͠͝c̵̴̴̡̢̰̭̞̤̗͙͙͈̠̣͍̣̥̖͒͐̿͂̓ͮ̋͋̔̾̇̄̔͊̾͒̽̔̊͛̈̽̈́͢͝͝͏͙̱͔̒k̵̸̛̝̜̞̘͇͇̲͎̍ͬͮ̑͆̃͑̃̆̾ͨ͟͞͞͏̶̧̬̺̖͙͚̞̳̞͎͔̒̎̋͋̔̆̂ͪͤ̈́̅͢ ̶̢̨̠̼͓͖̰̖̞̝͍̯̱̝͈͕̟͓̜̈́̒ͤͦ̿̎̋ͯ̔̀ͭ̔ͬ̏ͫ͋̎͗͛ͫ̾͟͟͜͢͟͠͡͝ͅb̸̡̛̛̹̩̬͚̳̟̘̩̖̭͔̮̖̫͓̞̝͉̗̍ͥ̈́̃͆̇ͬͤ̿̈̉̇̃ͫ̓ͫ̾̈́́̃̓̈ͥ͂͘͡r̷̷̷̼̖̟̥̦̘̙̬͇͕͇̼̦͎ͤͯͥͫ̏̈̿̇ͦ̃̒͂ͣ̓̈́ͥ̑͗ͩ̇ͦͫ̋̀ͤ̋̊̈́͘̕͏̫̌o̷̸̢̡͈͇͕̳͙͚͖͓̳̤͈̙ͣͬ́ͯ̋͊͛̈́̑̌͗ͧ̾̇̎ͥ̄́͗͑̑ͫ̇̆̊͛͆̇̈ͨ͠͡͞͝w̸̧̢͓̜͔̫̮͈̦̬̖̣͕̺̳̤̲̖̫͈͖͚ͤ̇ͯ̃͑ͣ̓͌̉̾̏̏ͯ̉͑̓̒̅̏̅͒̿ͦ͢͝͡͞n̴̠̥̺͓̝͓̹̠̼̜̥̅̊̂̆ͮ̏̒͒ͬ̉ͭͨ́ͮ̈̎̿̆̄̍̔̄̆̅͑̇̉́ͣ̊̊̐͐̚͡͠͠͠ ̵̶̸̨̛͚̙̮̞̙̖̹̯̰͕͈̱͔͓͓̰͈̗͔̝̩ͤͧͮ͗́̒̃̿͂̌ͭ̅ͬ̎̒ͦ͆͋̏̽͜͡͡͠f҉̵̷̵̢̡̛͙̫̖̬͉̯̝̪̗͉̖̫͙̗̱̪̍͊̀͌́́̀ͮͧ̄̃̏ͬ͗ͣ̂̇̐́ͯ̊ͮ͡͝͡͡͠o̸̵̡̨̨̪̭͎̹̲̘͇̻̼͉͖̥̹͂ͫ̀̐͒̋ͤ͑͆͗ͤ̓̈́ͦ͡҉̶͈͔̰͚͍̒̓ͤ͛͏̗̼͍ͩ̒x̨̖̬̯̓ͭ̒̽̑͗ͯ͒ͥ̊̀̋̊ͨ͒ͪͬ͊҉̵̷̴̜̩͙͍̭̯̮̞̞̼͒̀ͪ̉́͊̅̓̅͗̕͡͝ͅ ̽ͣ̔҉̴̢̛̥̤̲͗̾͋̕͟͝҉̸̡̢̳̠͕̘̠̲̱̭̖̌̊̈́͆̋̇̽ͫͣ́̄̑̈̌ͯ͌ͥ̀͠͝ͅj̶̸̴̷̶̧̢̛̜̤̱̰͍͉̝̟̗̠̦͎̬͉̻̫́ͬ̑́ͨ̂ͯͨ́ͫ̓̅͛̓̎̏ͮ͒̈̾ͬ̀̚͜͞͝ų̰̰̯͚̮͈̯͚̲̣̱͉ͦ̋ͣ͐ͯ̀͒̓ͤ͏̵̷̸̨̡̜̱̟̭̤̺ͦ͒͒̾ͥͫ͊̑ͭͫ̇̕͢͟͠ͅm̸̶̵̷̡̨̙̭̠͍̜̟̫͖̼͕͉̯̼͇͎̼͍͌̎ͬ͐̔͛̒͊ͬͤ̊̉ͤ̾ͣ̏̐̉̂̃́͞ͅ҉̵̴̓p͆̇͏̶̷̵͈͖͕̖̜͙̯̤̪̯̙̔ͦͤ͒͊̀͂͆̒ͪ̑̆͌̚͢͜͟͝͡͏̵̸̶̨͖ͧͥ̋̀̒̕͡͡ẻ̸̷̵̸̡̙̻̜̯̦̟͇̭̬̠̜̭̣̝̜̦͇͙̣̂ͭ͛ͥͤ̓ͨ́̓ͤͯͮ̐̐ͪͨ̉̒ͬͤ̈̎̕̕͜ḑ̵̴̸̧̛̲̦̙̭͎̱̩̥̤͍͍̘͉͍͓̺̫̺̤̱̱̫̅͂̔͋̌̿͛ͣ̔̈͆ͥͫ̎̒ͥ̎̌̚̚͠͠ ̸̫͈̺̪̩͔̏͂ͅ͏̢͖̬̞̥̙̦̜ͧ̏͗̍̽͋̋͋͢͟͢͏̸̴͚͇̳͙͔̉̄ͩͧ͒̎̓ͮͣ͆͢͡o̸̵͚̗̟̜̱̝͓̦͍̣̟̯̭͈͖̬̲͉̫̬͚͖̥̎́̀̔͗̔ͤ̃͐̏ͬ̎̎̄̀̆̽ͩͨ̚͟͟͏̯̐ṽ̴̢̱̠̞̼̫̭̠̳̭͕̺͇̰̠̺̻̇͛ͤ̏̈́̀͒̀̀̄̓̈́̚͝͞͠͠͏̦̟̞̬̣̈́̿̾͊̅͜͜͝ę̴̢̛̱̝̗͎͔͚̱̲͙̦̣͕͙̦͖̰̫͈ͯ̀́̅ͪ̊̇ͣ̈͛ͥͣ̅ͦ͑̾̔ͮ̇̓̿͘̚͟͟͜͠͞ŗ̴̷̛̪̹̥̭͎͉̝̠͔̝̹̦̰͖̮͈͖̞̖̗͛̎̃ͩ̂͌̿̒́ͦ̆̾ͬ̓̉̀ͧ̍̅̂̋͘͘͢͡͠ ͤ͌ͧ͠͏̢̡̛̪͔͚̗͈̹̹̩̙̰͉͖̹͍̲̍̂̐̀̅̒͛ͤ͊̈͗̍̀ͬ̔̆̃͛͋̕͜͟͞͝͠ͅͅţ̢̖̯͉͙͔͙͚̞͓͍͕̈́̓ͭ͛́̂ͥ̂͐̀ͮͭ̎̆͢ͅ҉̬̻̇̀ͣ͌͏͚͐̋҉̷̸͓̻ͫ͛̊̓̽h̸̶̶̨͔̼͍̰͕̩̥͓̹̠͇͓͙̠̝͓̣ͯ̾͛ͧ͒̅ͫ̆͋̍͊̋ͥ̈͒̒̓̽͛͛͑ͫ͆͆͑͜͢͞͞e̴͙̭̫̝̹̮͏̴̢̛̬͇̟̘͉͙̃͋̓̔̔ͭ̈́͟͟͏̷̸̴̸̝̬̣̙͔̭̐̄̑͛̾̓̇ͫͤ̄̄̑ͅ ̸̶̵̡̢̛̼͈͇̖̭̭͙̭͇̦͈͖̩̥̃̌͌ͪ͑̉ͯͨ̓ͯ͂͆͗̄̑ͯͩ̄̌̈̑̉͗̏̾̀͟͟͠͠l̸̼ͩͨͤ̿̔͘͏̸̴̷̡̟͈̠̙̞̙͉̣̦͓͉͔͇͈͎̘ͧ̏̅̍͌̔ͬ̈́ͨ̆͋̊ͣͫ̿́́̓ͩ͘ͅa̛̹̱̤̩͖͕̞̹ͦ̆ͥ͒ͧ̀ͪͯ͒̂ͯ͛͛̉͒ͫͮ̒̑̕͢͞͡ͅ͏̵̲̖̱̘͇͗̌ͥ̊̚͏̲͎͙̐z̝̘̱͑́̇̂͂̋̑̏ͧ̆͘ͅ͏͌ͤ͏̷̞̳̮͎̞̩̝̣̻ͥ̏͐ͬͭ̈ͤͦ͑̆̚͏̧͔͇͍͛ͮ̅ͥ̄y̛̘̹̹͉̦̞̭̭ͬ̽̉͒̒̎҉̵͖̯̪̭̬͔̙͚̖͕̬̩̳͛̈́͗̂ͪ̄͐͒͂͊̄̊̆̔̅͒͊̕͝͠ ̴̨̲̬̼̲͕̭̮̲̤̩̖͓̬̱͎̠͕̖̻͉ͣ͗́͗͐̊͐ͮ̆͂̽͗ͧ̂̎ͧ͒ͭ̕͜͞ͅ҉̢̪͛̈́̍d̶̺̘͖͎̣̱͔̥͉͓̯͔͉̦̜̬̣̜͈̭̞̑̈̿́ͪ̑͗̎̑ͮ̊̒́̆̐̐̕͘͘͢͜͠͞͠͠͝҉͙ȯ̸̵̡̢̜͚̗̘̝̓͒̓̋͆̂͌҉̷̴̵̨̡̛̹͓̗̰͎̙̤͕͈͕͇̞͑̅ͧ̄̂̍̈́̍̉̉͛ͣ̚͝ģ̵̸̷̷̥̰̰̞͇̱͕̲̹̤̻̯̗̲̪̰̖̿̏ͮ̒ͪ̂̔͆̽̔̏̐̅̋̌̂̌͌̀ͫ̃͌̀͘͝͞͝ͅ.̥̫̈̈̏͏̲͉͎ͭ̈ͪ̿ͭ̒̋̀ͬ͊͝ͅ҉̷̷̯̜̠̓ͤ̋͊ͨ͛̊̏́̒̏̿ͧ̌̿̎́ͥ̓ͭ̕͡͡