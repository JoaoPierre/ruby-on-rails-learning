require "date"
  def estimated_time_to_delivery(data_envio, tempo_entrega_dias) #tempo entrega == inteiro QUE REPRESENTA OS DIA UTEIS ; data_envio == "YYYY-MM-DD"
    data= Date.parse(data_envio)
    dias_uteis = 0
    while dias_uteis < tempo_entrega_dias
      data += 1
      dias_uteis += 1 unless [0, 6].include?(data.wday)
    end
    puts data.to_s
    data.to_s
  end

estimated_time_to_delivery("2024-04-01", 10)
