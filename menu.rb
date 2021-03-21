require "address_scraper"
require "httparty"

class Menu
	def initialize
		puts "Como deseja inputar os dados? (0 - Texto bruto, 1 - Arquivo, 2 - URL)"
		while true
			option = gets.chomp()
			case option
				when "0"
					puts "Insira o texto a ser analisado:"
					exec(gets().chomp())
					break
				when "1"
					puts "Insira o path do arquivo:"
					path = gets.chomp()
					exec(readFile(path))
					break
                when "2"
                    puts "Insira a URL do site"
                    url = gets()
					exec(readURL(url))
					break
				else
					puts "Input inválido"
			end
		end
    end
	
	def readFile(path)
		file = File.open(path, 'r')
		lines = file.readlines.map(&:chomp)
		file.close()
		str = ""
		lines.each do |line|
			str << line
		end
		return str
	end

    def readURL(url)
        response = HTTParty.get(url)
        return response.body
	end

    def exec(text)
        addressScraper = AddressScraper.new

        addressScraper.scrap(text)
        addressScraper.print
    end
end