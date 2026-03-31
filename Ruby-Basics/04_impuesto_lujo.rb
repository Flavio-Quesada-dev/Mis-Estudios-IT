lista_precios = [10, 50, 120, 200, 5]

lista_precios.each do |precio|
  if precio > 100
    # Calculamos el precio con el 20% de recargo
    precio_final = precio * 1.20 
    puts "💎 Producto de Lujo: $#{precio}. Con impuesto: $#{precio_final.round(2)}"
    puts "✅ Felicitaciones, su impuesto de LUJO se ejecutó con éxito."
  else
    puts "🛒 Producto Estándar: $#{precio}"
    puts "✅ Su compra ha sido realizada con éxito."
  end
  puts "-----------------------"
end
