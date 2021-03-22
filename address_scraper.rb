require_relative "./constants.rb"

class AddressScraper
	def initialize
        @addresses = []
		@regex = /#{TYPE} #{STREET_NAME}, #{NUMBER} #{COMPLEMENT}\s?- #{NEIGHBORHOOD}, #{CITY} - #{STATE}, #{ZIP_CODE}/i
		# Av. Eng. Eusébio Stevaux, 823 - Santo Amaro, São Paulo - SP, 04696-000
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
			puts "Número: #{address[2]}"
			puts "Complemento: #{(!address[3] ? 'N/A': address[3])}"
			puts "Bairro: #{address[4]}"
			puts "Cidade: #{(!address[5] ? 'N/D': address[5])}"
			puts "Estado: #{(!address[6] ? 'N/D': address[6])}"
			puts "CEP: #{(!address[7] ? 'N/D': address[7])}"
			puts '------------'
        end
    end
end