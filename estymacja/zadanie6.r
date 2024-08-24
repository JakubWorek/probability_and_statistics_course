# Plik gamma.dat zawiera dane pochodz ˛ace z rozkładu gamma.
# Znajdz estymaty parametrów tego rozkładu
# korzystajac z:
#   a) metody momentów,
#   b) metody najwiekszej wiarygodnosci
#      [mozna skorzystac albo z funkcji optim()
#      albo z funkcji fitdistr() z pakietu MASS.]

# Wczytaj dane z pliku "gamma.dat"
data <- scan("d:\\DEV\\R\\estymacja\\gamma.dat")

# Oblicz momenty
mean_data <- mean(data)
var_data <- var(data)

# Estymacja parametrów za pomocą momentów
shape_moments <- mean_data^2 / var_data
scale_moments <- mean_data / var_data

print(paste("Estymator k (shape) metodą momentów: ", shape_moments))
print(paste("Estymator θ (scale) metodą momentów: ", scale_moments))

# fitdistr method

# załaduj pakiet MASS
library(MASS)

# Estymacja parametrów za pomocą metody największej wiarygodności
fit_result <- fitdistr(data, densfun = "gamma")

# Pobierz estymowane parametry
shape_mle <- fit_result$estimate["shape"]
scale_mle <- fit_result$estimate["scale"]

print(paste("Estymator k (shape) metodą MLE: ", shape_mle))
print(paste("Estymator θ (scale) metodą MLE: ", scale_mle))

# optim method

# Zdefiniuj funkcję log-likelihood dla rozkładu gamma
log_likelihood_gamma <- function(params) {
  shape <- params[1]
  scale <- params[2]
  -sum(dgamma(data, shape, scale, log = TRUE))
}

# Ustaw początkowe wartości parametrów
initial_params <- c(shape = 1, scale = 1)

# Użyj funkcji optim do maksymalizacji log-likelihood
result <- optim(par = initial_params,
                fn = log_likelihood_gamma,
                method = "BFGS")

# Wyniki estymacji
estimated_shape <- result$par[1]
estimated_scale <- result$par[2]

# Wyświetl wyniki
print(paste("Estymator k (shape) metodą MLE: ", estimated_shape))
print(paste("Estymator θ (scale) metodą MLE: ", estimated_scale))