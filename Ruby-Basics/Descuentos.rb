# Proyecto: Motor de Descuentos Automático (Shopify Simulation)
# Autor: Flavio-Quesada-dev (Rumbo a Shopify L8)
# Conceptos: Arrays, Iteración .map y Operador Ternario

# Nuestra lista de precios inicial
precios_originales = [100, 30, 80, 45, 200]

# LÓGICA: 
# Si el precio es mayor a 50, restamos 10. Si no, lo dejamos igual.
# El símbolo "?" es como un "entonces" y el ":" es como un "si no".
precios_finales = precios_originales.map { |p| p > 50 ? p - 10 : p }

puts "--- LOG DE OPERACIONES SHOPIFY ---"
puts "Precios originales en vidriera: #{precios_originales}"
puts "Aplicando descuentos de temporada..."
puts "Nuevos precios finales: #{precios_finales}"

# El resultado esperado es: [90, 30, 70, 45, 190]
