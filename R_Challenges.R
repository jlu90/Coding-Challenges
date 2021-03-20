hello.name <- function(name)  {
  return(paste('Hello', name))
}

multiply <- function(int1, int2) {
  return(int1 * int2)
}

in.vector <- function(int, vec.of.ints) {
  for (num in vec.of.ints){
    if (num == int) {
      return(TRUE)
    }}
  
  return(FALSE)
}

count.of.int <- function(int, vec.of.ints) {
  counter <- 0
  for (num in vec.of.ints) {
    if (num == int) {
      counter <- counter + 1
    }
  }
  
  return(counter)
}

bar.count <- function(weight) {
  bars <- floor(weight / 3)
  weight <- weight - (3 * bars)
  
  if (weight != 0) {
    bars <- bars + weight
  }
  
  return(bars)
}

sum.of.vec <- function(int1, int2, int3){
  v <- c(int1, int2, int3)
  vec <- c(0)
  
  for (n in v) {
    if (n %% 3 != 0) {
      vec <- append(n, vec)
    }
  }
  
  return(sum(vec))
}

is.prime <- function(n){
  if (n < 2){
    return(FALSE)
  }
  
  v <- c(2:(n-1))
  
  for (i in v) {
    if (n %% i == 0) {
      return(FALSE)
    }
  }
  
  return(TRUE)
}

## Code Wars
sum_array <- function(a){
  if (length(a) == 0) {
    return(0)
  }
  
  total <- 0
  
  for (val in a) {
    total <- total + val
  }

  goals <- function(la_liga_goals, copa_del_rey_goals, champions_league_goals) {
  return(la_liga_goals + copa_del_rey_goals + champions_league_goals)
}

findSmallestInt <- function(arr){
  min_num <- Inf
  for(num in arr){
    if(num < min_num){
      min_num <- num
    }
  }
  return(min_num)
}