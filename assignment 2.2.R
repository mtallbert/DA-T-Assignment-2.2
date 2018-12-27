set.seed(2)

n <- 10
m <- 10

a_matrix <- replicate(n = n,expr = rnorm(m))
a_matrix


a_df <- data.frame(a_matrix)
a_df


for (i in 1:m) {
  for (j in 1:n) {
    a_df[i,j]<-a_df[i,j] + 10*sin(0.75*pi)
   
  }
}

print(a_df)

system.time(for (i in 1:m) {
  for (j in 1:n) {
    a_df[i,j]<-a_df[i,j] + 10*sin(0.75*pi)
   
  }
})

system.time(a_matrix <- a_matrix + 10*sin(0.75*pi))
# the non-vectorised form of the solution is much slower than the vectorized form. currently there is no significant difference because of the choice of m, n. in increased
# the difference will show