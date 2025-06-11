
bubble_sort <- function(x) {
    n <- length(x)
    repeat {
        swapped <- FALSE
        for (i in 1:(n - 1)) {
            if (x[i] > x[i + 1]) {
                tmp <- x[i]
                x[i] <- x[i + 1]
                x[i + 1] <- tmp
                swapped <- TRUE
            }
        }
        n <- n - 1
        if (!swapped) return(x)
    }
}
