fileHandle <- file("grid.txt", open="r")
table <- read.table(fileHandle)
#table <- table[7:8,7:8]
# Number of consecutive numbers, in any direction, to find the highest product of
prod_len <- 4

highest_prod <- 1

num_rows = nrow(table)
num_cols = ncol(table)

# Up/down
for(i in 1:(num_rows-prod_len+1)){
  for(j in 1:num_cols){
    product <- prod(table[i:(i+prod_len-1),j])
    if(product>highest_prod){
      highest_prod <- product
    }
  }
}

# Left/right
for(j in 1:(num_cols-prod_len+1)){
  for(i in 1:num_rows){
    product <- prod(table[i,j:(j+prod_len-1)])
    if(product>highest_prod){
      highest_prod <- product
    }
  }
}

# Northwest-southeast
for(i in 0:(num_cols-prod_len-1)){
  for(j in 0:(num_rows-prod_len-i)){
    product <- 1
    for(k in 1:prod_len){
      product <- product*table[(j+k),(i+k)]
    }
    if(product>highest_prod){
      highest_prod <- product
    }
  }
}
for(j in 1:(num_rows-prod_len-1)){
  for(i in 0:(num_cols-prod_len-j)){
    product <- 1
    for(k in 1:prod_len){
      product <- product*table[(j+k),(i+k)]
    }
    if(product>highest_prod){
      highest_prod <- product
    }
  }
}

# Southwest-northeast
for(i in 0:(num_cols-prod_len)){
  lim <- num_rows-1-i
  if (num_rows < 0){
    lim <- 0
  }
  for(j in num_rows:lim){
    product <- 1
    # Diagonal southwest-northeast
    for(k in 1:prod_len){
      product <- product*table[(j-k+1),(i+k)]
    }
    if(product>highest_prod){
      highest_prod <- product
    }
  }
}
for(j in (num_rows-1):(prod_len-1)){
  lim <- j
  if (num_cols <= j){
    lim <- num_cols
  }
  for(i in 0:lim){
    product <- 1
    for(k in 1:prod_len){
      product <- product*table[(num_rows-j-k+1),(i+k)]
    }
    if(product>highest_prod){
      highest_prod <- product
    }
  }
}

highest_prod

close(fileHandle)