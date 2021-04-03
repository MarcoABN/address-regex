# TYPE = /(Av(?:enida|\.)?|R(?:ua|\.)?)/
# STREET_NAME = /([\p{L}\d \(\)\-\/\.]+)/
# NUMBER = /(\d+\w*)/
# COMPLEMENT = /([\p{L}\d \(\)\-\/\.]+)?/
# NEIGHBORHOOD = /([\p{L}\d \(\)\-\/\.]+)/
# CITY = /([\p{L} ]+)/
# STATE = /(\w{2})/
# ZIP_CODE = /(\d{5}-?\d{3})?/

SEPARATORS = /(?: -|,| •) /
TYPE = /(Av(?:enida|\.)?|R(?:ua|\.)?|Est(?:rada|ação|r\.?)|Rod(?:ovia|\.?)?|Via(?:duto|\.)?)/
STREET_NAME = /([\p{L}\d \(\)\-\/\.]+)/
NUMBER = /((?:[nN][°º] ?)?\d+\.?\d*\w*)/
COMPLEMENT = /([^ -,][\p{L}\d \(\)\/\.]+)?/
NEIGHBORHOOD = /([^ -,][\p{L}\d \(\)\-\/\.]+)?/
CITY = /([\p{L} ]+)/
STATE = /([a-zA-Z]{2})/
ZIP_CODE = /((?:(CEP|cep|Cep) ?)?\d{5}-?\d{3})/
