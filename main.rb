load 'address_scraper.rb'

text = gets()
puts "\n"

addressScraper = AddressScraper.new

addressScraper.scrap(text)
addressScraper.print

"""
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Av. Eng. Eusébio Stevaux, 823 - Santo Amaro, São Paulo - SP, 04696-000 Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Av. Eng. Eusébio Stevaux, 823 Sala 22 - Santo Amaro, São Paulo - SP, 04696-000
""" 