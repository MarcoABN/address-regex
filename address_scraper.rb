class AddressScraper
	def initialize
		@addresses = []
 	   @regex = /(Av(?:enida|\.)?|R(?:ua|\.)?)\s([\p{L}\d\s\(\)\-\/\.]+),\s(\d+\w*)\s([\p{L}\d\s\(\)\-\/\.]+\s)?-\s([\p{L}\d\s\(\)\-\/\.]+),\s([\p{L}\s]+)-\s(\w{2}),\s(\d{5}-?\d{3})/i
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
			puts "Cidade: #{address[5]}"
			puts "Estado: #{address[6]}"
			puts "CEP: #{address[7]}"
			puts '------------'
        end
    end
end

# Tipo: 
# Nome
# número
# complemento
# bairro
# cidade
# estado
# cep