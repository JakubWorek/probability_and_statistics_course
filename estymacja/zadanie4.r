# Plik goals.dat zawiera dane o liczbie goli strzelonych przez
# pewna druzyne piłkarska w kolejnych meczach.
# Zakładamy, ze liczba goli ma rozkład Poissona o nieznanej
# wartosci λ. Wyznacz estymate λ korzystajac z
# estymatora MLE. [Dane mozna wczytac funkcja scan().]

# Wczytaj dane z pliku "goals.dat"
data <- scan("d:\\DEV\\R\\estymacja\\goals.dat")

# Definiuj funkcję log-likelihood dla rozkładu Poissona
log_likelihood_poisson <- function(lambda) {
  -sum(dpois(data, lambda, log = TRUE))
}

# Ustaw początkową wartość parametru lambda
initial_lambda <- mean(data)

# Użyj funkcji optim do maksymalizacji log-likelihood
result <- optim(par = initial_lambda,
                fn = log_likelihood_poisson,
                method = "BFGS")

# Wyniki estymacji
estimated_lambda <- result$par

# Wyświetl wyniki
print(paste("Estimated lambda: ", estimated_lambda))