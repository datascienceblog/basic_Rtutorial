# ---- test-a ----

## Easy sample for rbind & cbind (same dimension)

x1 <- c(7, 4, 4, 9)                  # Column 1 of data frame
x2 <- c(5, 2, 8, 9)                  # Column 2 of data frame
x3 <- c(1, 2, 3, 4)                  # Column 3 of data frame
data_1 <- data.frame(x1, x2, x3)  
data_2 <- data_1

vector_1 <- c(9, 8, 7)               # Create example vector
vector_2 <- append(vector_1, 3)

# ---- test-b ----

rbind(data_1, vector_1)              # rbind vector to data frame

cbind(data_2, vector_2)              # rbind vector to data frame

rbind(data_1, data_2)
cbind(data_1, data_2)


## Complex sample for rbind & cbind (diff dimension)

col1 <- c(5, 1, 1, 8)                # Column 1 of data frame 1 plyr example
col2 <- c(9, 7, 5, 1)                # Column 2 of data frame 1 plyr example
col3 <- c(1, 1, 2, 2)                # Column 3 of data frame 1 plyr example

data_plyr1 <- data.frame(col1, col2, col3) # Create plyr data frame 1

col3 <- c(5, 1, 1, 8)                # Column 1 of data frame 2 plyr example
col4 <- c(9, 7, 5, 1)                # Column 2 of data frame 2 plyr example

data_plyr2 <- data.frame(col3, col4) # Create plyr data frame 2

library("plyr")

# The function (rbind.fill) creates a column for each column name that appears either in the first or in the second data matrix. 
# If a column exists in both data frames, it is row binded as usual. However, if a column is missing in one of the two data frames, the empty cells are replaced by NA.
rbind.fill(data_plyr1, data_plyr2)   # Apply the rbind.fill plyr function


