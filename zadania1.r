pre <- precip

# 1 znalezc srednia i mediane opadow
print("Srednia opadow: ")
print(mean(pre))
print("Mediana opadow: ")
print(median(pre))

# 2 znalezc wariancje i odchylenie standardowe opadow
print("Wariancja opadow: ")
print(var(pre))
print("Odchylenie standardowe opadow: ")
print(sd(pre))

# 3 znalezc rozstep opadow
print("Rozstep opadow: ")
print(diff(range(pre)))

# 4 znalezc rozstep miedzykwartylowy opadow (IQR)
print("Rozstep miedzykwartylowy opadow (IQR): ")
print(IQR(pre))

# znalezc rozstep miedzykwartylowy opadow (fivenum)
print("Rozstep miedzykwartylowy opadow (fivenum): ")
print(fivenum(pre)[4] - fivenum(pre)[2])

# 5 znalezc odchylenie przecietne od sredniej
print("Odchylenie przecietne od sredniej: ")
print(mean(abs(pre - mean(pre))))

# znalezc odchylenie przecietne od mediany
print("Odchylenie przecietne od mediany: ")
print(mean(abs(pre - median(pre))))

# 6 znalezc poziom opadow w miastach, ktorych nazwa zaczyna sie na "M"
# przy uzyciu funkcji startsWith
print("Poziom opadow w miastach, ktorych nazwa zaczyna sie na 'M':")
print(pre[names(pre)[startsWith(names(pre), "M")]])

# 7 znalezc miasta w ktorych poziom opadow jest rowny sredniej
print("Miasta w ktorych poziom opadow jest rowny sredniej:")
print(names(pre[pre == mean(pre)]))

# 8 znalezc miasta w ktorych opady roznia sie od mediany o
# nie wiecej niz 0.5 cala
print("Miasta w ktorych opady roznia sie od mediany o nie wiecej niz 0.5 cala:")
print(names(pre[abs(pre - median(pre)) <= 0.5]))

# 9 znalezc miasto w ktorym opady sa najwieksze
print("Miasto w ktorym opady sa najwieksze:")
print(names(pre[pre == max(pre)]))

# znalezc miasto w ktorym opady sa najmniejsze
print("Miasto w ktorym opady sa najmniejsze:")
print(names(pre[pre == min(pre)]))

# 10 znalezc liczbe miast z opadami powyzej sredniej
print("Liczba miast z opadami powyzej sredniej:")
print(length(pre[pre > mean(pre)]))

# 11 znalezc miasta w ktorych opady leza powyzej gornego kwartyla
print("Miasta w ktorych opady leza powyzej gornego kwartyla:")
print(names(pre[pre > fivenum(pre)[4]]))

# 12 znalezc miasta w ktorych opady leza ponizej dolnego kwartyla
print("Miasta w ktorych opady leza ponizej dolnego kwartyla:")
print(names(pre[pre < fivenum(pre)[2]]))

# 13 histogram rozkladu opadow
#hist(pre)

# 14 wykres pudełkowy rozkladu opadow
#boxplot(pre)

# ktore miasta stanowia wartosci odstajace na wykresie pudełkowym
print("Miasta stanowia wartosci odstajace na wykresie pudełkowym:")
print(names(boxplot.stats(pre)$out))