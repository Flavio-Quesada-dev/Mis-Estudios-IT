# 🛒 Shopify Order Calculator - Simulador de Checkout
# Desarrollado por: Flavio-Quesada-dev
# Objetivo: Practicar lógica de Backend para e-commerce antes de entrar a UTU/FING.

def calcular_checkout(precio_base, es_premium, cupon_descuento)
  puts "--- Procesando Orden en Shopify ---"
  
  # 1. Aplicar descuento por fidelidad
  if es_premium
    descuento_fidelidad = 500
    puts "✅ Cliente Premium detectado: -$#{descuento_fidelidad}"
  else
    descuento_fidelidad = 0
  end

  subtotal = precio_base - descuento_fidelidad

  # 2. Aplicar cupón de bienvenida (10% OFF) si existe
  if cupon_descuento == "BIENVENIDA"
    ahorro_cupon = subtotal * 0.10
    subtotal = subtotal - ahorro_cupon
    puts "🎫 Cupón BIENVENIDA aplicado: -10%"
  end

  # 3. Lógica de Envío (Gratis si supera los 2500)
  envio = subtotal > 2500 ? 0 : 200
  puts envio == 0 ? "🚚 ¡Envío GRATIS incluido!" : "🚛 Costo de envío: $200"

  # 4. Cálculo de IVA Uruguay (22%)
  iva = subtotal * 0.22
  total_final = subtotal + iva + envio

  # 5. Ticket Final
  puts "-----------------------------------"
  puts "Subtotal: $#{subtotal.round(2)}"
  puts "IVA (22%): $#{iva.round(2)}"
  puts "TOTAL A PAGAR: $#{total_final.round(2)}"
  puts "-----------------------------------"
end

# --- PRUEBA DEL SISTEMA ---
# Simulamos una compra de una campera de $5000, usuario Premium y con cupón.
calcular_checkout(5000, true, "BIENVENIDA")
