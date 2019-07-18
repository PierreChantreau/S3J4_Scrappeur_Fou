require 'nokogiri'
require 'open-uri'
require 'pry'


array_crypto = []
name_value_hash = {}



def crypto_name
page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
page.xpath('//*[@id="id-bitcoin"]/td[2]/a').each do |i|
  return i.text
end
end

def crypto_value

page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
page.xpath('//*[@id="id-bitcoin"]/td[5]/a').each do |node|
 return node.text
end
end




def get_crypto(name_value_hash)

name_value_hash = { crypto_name => crypto_value}


end
#faire boucle allant chercher les informations nécessaires de toutes les lignes.
get_crypto(name_value_hash)
