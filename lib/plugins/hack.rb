require 'rest-client'
require 'open-uri'
require 'json'

class Hack < Plugin
  def command
    /^\/hack (.+?)$/
  end

  def show_usage
    bot.api.sendMessage(chat_id: message.chat.id, action: 'typing', text: "Use valid email to check \n eg: *suffi90@gmail.com*")
  end

  def do_stuff(match_results)
    search = URI::encode(match_results[1])

    json_resp = RestClient.get("https://haveibeenpwned.com/api/v2/breachedaccount/#{search}")
    decoded = JSON.parse(json_resp)

    decoded.each do |item|
        
     if item["Title"].empty?

      bot.api.sendMessage(chat_id: message.chat.id, action: 'typing', text: 'Your Email Not Found In The Database')
 

    else
      title = "#{item['Title']}"
      domain = "#{item['Domain']}"
      
      output_message = <<-MSG

Name : #{title.capitalize}
Url  : #{domain}
MSG
      sleep 2
      bot.api.sendMessage(chat_id: message.chat.id, action: 'typing', text: output_message)
      sleep 1

    end
  end
end
end

