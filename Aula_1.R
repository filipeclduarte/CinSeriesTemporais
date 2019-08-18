# 1ª aula


# 1.4 Plots, trends, and seasonal variation
# 1.4.1 A flying start: Air passenger bookings

# Importando os dados 
data("AirPassengers")

# Salvando a base na AP
AP <- AirPassengers

# Visualizar os dados
AP

# classe desses dados
class(AP)

# quando inicia
start(AP)

# quando termina
end(AP)

# frequencia
frequency(AP)

# Grafico
plot(AP, ylab = "Passengers (1000's)")

layout(1:2)
plot(aggregate(AP))
boxplot(AP ~ cycle(AP))

# 1.4.2 Unemployment: Maine

# importar os dados
Maine.month <- read.csv("unemploy.csv", header = TRUE, sep ="")

attach(Maine.month)
class(Maine.month)

Maine.month.ts <- ts(unemploy, start = c(1996, 1), freq = 12)
Maine.annual.ts <- aggregate(Maine.month.ts)/12

##### Atividade #####

# 1. escolher 3 séries temporais no repositório TDSL:

# a. https://pkg.yangzhuoranyang.com/tsdl/

# 2. uma serie para cada tipo:

# a. com sazonalidade
# b. com tendencia determinística
# c. serie financeira ou climática

# 3. Para cada série plotar:

# a. a série própria e nas escalas de tempo: mês e ano.
# b. ACF e PACF.
# c. Série decomposta
# d. ACF sobre o resíduo da decomposição

## Escrever um relatório com as análises para cada série e enviar pra o google classroom:
# a. data de entrega 20/08/2019.

