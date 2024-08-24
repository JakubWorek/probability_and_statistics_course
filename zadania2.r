Auto <- read.table("d:\\DEV\\R\\Auto.data", header = TRUE, na.strings = "?")

# 1 znalezc srednie zuzycie paliwa wszystkich samochodow
print("Srednie zuzycie paliwa wszystkich samochodow: ")
print(mean(Auto$mpg))

# 2 znalezc srednie zucycie paliwa samochodow z 4 cylindrami
print("Srednie zucycie paliwa samochodow z 4 cylindrami: ")
print(mean(Auto$mpg[Auto$cylinders == 4]))

# 3 znalezc mediane wagi wszystkich samochodow
print("Mediana wagi wszystkich samochodow: ")
print(median(Auto$weight))

# 4 znalezc srednie zuzycie paliwa samochodow wyprodukowanych w 72
print("Srednie zuzycie paliwa samochodow wyprodukowanych w 72: ")
print(mean(Auto$mpg[Auto$year == 72]))

# 5 znalezc wariancje przyspieszenia wszystkich samochodow
print("Wariancja przyspieszenia wszystkich samochodow: ")
print(var(Auto$acceleration))

# 6 znalezc wariancje przyspieszenia samochodow japonskich
print("Wariancja przyspieszenia samochodow japonskich: ")
print(var(Auto$acceleration[Auto$origin == 3]))

# 7 znalezc liczbe samochodow ktorych moc jest powyzej sredniej
print("Liczba samochodow ktorych moc jest powyzej sredniej: ")
print(length(Auto$horsepower[Auto$horsepower > mean(Auto$horsepower)]))

# 8 znalezc maksymalna moc samochodow ktorych waga jest powyzej sredniej
print("Maksymalna moc samochodow ktorych waga jest powyzej sredniej: ")
print(max(Auto$horsepower[Auto$weight > mean(Auto$weight)]))

# 9 znalezc liczbe samochodow ktorych zuzycie paliwa jest ponizej sredniej
print("Liczba samochodow ktorych zuzycie paliwa jest ponizej sredniej: ")
print(length(Auto$mpg[Auto$mpg > mean(Auto$mpg)]))

# 10 znalezc minimalna liczbe cylindrow samochodow ktorych zuzycie paliwa 
# jest ponizej sredniej
print("Min licz cylin sam ktorych zuzycie paliwa jest ponizej sredniej: ")
print(min(Auto$cylinders[Auto$mpg > mean(Auto$mpg)]))

# 11 znalezc ile jest samochodow o maksymalnej pojemnosci silnika
print("Liczba samochodow o maksymalnej pojemnosci silnika: ")
print(length(Auto$displacement[Auto$displacement == max(Auto$displacement)]))

# 12 znalezc maksymalna wage samochodow 
# ktorych pojemnosc silnika jest mniejsza od jej mediany
print("Max waga samo ktorych pojemnosc silnika jest mniejsza od jej mediany: ")
print(max(Auto$weight[Auto$displacement < median(Auto$displacement)]))