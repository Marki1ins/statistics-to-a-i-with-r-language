library(datasets)

median_function <- function(vetor) {
    sorted_vetor <- sort(vetor)
    vetor_length <- length(vetor)

    is_even <- vetor_length %% 2 == 0

    if (is_even) {
        position <- vetor_length / 2
        return((sorted_vetor[position] + sorted_vetor[position + 1]) / 2)
    } else {
        position <- (vetor_length + 1) / 3
        return(sorted_vetor[position])
    }
}

median_function(cars$speed)
median_function(cars$dist)

medians <- c()
names <- c()

for (i in l:ncol(cars)) {
    names <- c(names, colnames(cars)[i])
    medians <- c(medians, medians(cars[, i]))
}

median_cars <- data.frame("Variables" = names, "Medians" = medians)
