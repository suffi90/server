# Joshua

![WOPR computer](https://i.imgur.com/w4UBkRX.gif)

A *plugins* based bot for [Telegram](https://telegram.org/) messaging app written in *Ruby*.

### cool, now how do I use this bot?

Just write your bot API token in *config.json*. By default *pool size* value is set to 4 because this bot works with threads, but the value can be changed in config.json. You can also set a password if your bot is supposed to be private so that before interpreting commands it asks to enter a password. Oh and you've got to take a look at [this](https://core.telegram.org/bots#3-how-do-i-create-a-bot) if you haven't done it before!

This bot requires the gem [telegram-bot-ruby](https://github.com/atipugin/telegram-bot-ruby).

### super cool, how do I add new plugins?

Take a look at some plugins in `lib/plugins` folder like *diceroll.rb* or *fortune.rb* these are very simple plugins that can be easily hacked.

* A plugin must have a **command** method which returns a regexp or a string to parse the command that will invoke the plugin
* a **do_stuff** method which contains the body of your plugin
* optionally, but required for plugins like *say.rb* or *google.rb*, a **show_usage** method that will appear in case a user invokes a command that needs parameters or perhaps was invoked specifying the bot name like `plugin_command@bot_name` in a group chat.

Remember that argument **match_results** for **do_stuff** method can be used if your plugin needs to parse parameters and that the list of values to be parsed starts from 1. (this one will be fixed)

### TO FIX

A lot of stuff, but have no time... one day... perhaps...

### Author

Me of course!

### License
DWTFYWT
