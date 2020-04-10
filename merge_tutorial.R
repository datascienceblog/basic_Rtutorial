# Example 1

data1 <- data.frame(id = 1:6,                                  # Create first example data frame
                    x1 = c(5, 1, 4, 9, 1, 2),
                    x2 = c("A", "Y", "G", "F", "G", "Y"))

data2 <- data.frame(id = 4:9,                                  # Create second example data frame
                    y1 = c(3, 3, 4, 1, 2, 9),
                    y2 = c("a", "x", "a", "x", "a", "x"))

# Example 2

merge(data1, data2, by = "id")       # Merge data frames by columns names

merge(data1, data2, by = "id", all.x = TRUE)  # Keep all rows of x-data

merge(data1, data2, by = "id", all.y = TRUE)                   # Keep all rows of y-data

merge(data1, data2, by = "id", all.x = TRUE, all.y = TRUE)     # Keep all rows of both data frames


# Example 3

data3 <- data.frame(id = 5:6,                                  # Create third example data frame
                    z1 = c(3, 2),
                    z2 = c("K", "b"))

data12 <- merge(data1, data2, by = "id")                       # Merge data 1 & 2 and store

merge(data12, data3, by = "id")                                # Merge multiple data frames
