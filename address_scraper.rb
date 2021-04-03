require_relative "./constants.rb"

class AddressScraper
	def initialize
        @addresses = []
		@regex = /#{TYPE} #{STREET_NAME}#{SEPARATORS}#{NUMBER} ?#{COMPLEMENT}#{SEPARATORS}#{NEIGHBORHOOD}#{SEPARATORS}#{CITY}#{SEPARATORS}#{STATE}#{SEPARATORS}?#{ZIP_CODE}/i
	end

    def scrap(text)
        @addresses = text.scan(@regex)
    end
    
    def print
        @addresses.each_with_index do |address, index|
            puts '------------'
            puts "Endereço #{index + 1}"
            puts "Tipo: #{address[0]}"
			puts "Nome: #{address[1]}"
			puts "Número: #{address[2].sub(/[nN][°º] ?/, '')}"
			puts "Complemento: #{(!address[3] ? 'N/A': address[3])}"
			puts "Bairro: #{(!address[4] ? 'N/D': address[4])}"
			puts "Cidade: #{address[5]}"
			puts "Estado: #{address[6]}"
			puts "CEP: #{address[7].sub(/(CEP|cep|Cep) ?/, '')}"
			puts '------------'
        end
    end
end
