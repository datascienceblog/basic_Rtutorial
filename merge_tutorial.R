data1 <- data.frame(id = 1:6,                                  # Create first example data frame
                    x1 = c(5, 1, 4, 9, 1, 2),
                    x2 = c("A", "Y", "G", "F", "G", "Y"))

data2 <- data.frame(id = 4:9,                                  # Create second example data frame
                    y1 = c(3, 3, 4, 1, 2, 9),
                    y2 = c("a", "x", "a", "x", "a", "x"))

merge(data1, data2, by = "id")       # Merge data frames by columns names

merge(data1, data2, by = "id", all.x = TRUE)  # Keep all rows of x-data

