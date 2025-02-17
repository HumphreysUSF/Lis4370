# Define Matrices
A <- matrix(1:100, nrow=10)
B <- matrix(1:1000, nrow=10)

# Compute Determinants
det_A <- det(A)
det_B <- tryCatch(det(B), error = function(e) NA) # B is not square, so det() will fail

# Check and Compute Inverses
if (det_A != 0) {
  inverse_A <- solve(A)
} else {
  inverse_A <- "Matrix A is singular, so it has no inverse"
}

# Since B is not square (10x100), it has no inverse
inverse_B <- "Matrix B is not square, so it has no inverse"

# Print Results
print(paste("Determinant of A:", det_A))
print("Inverse of A:")
print(inverse_A)

print(paste("Determinant of B:", det_B))
print("Inverse of B:")
print(inverse_B)

