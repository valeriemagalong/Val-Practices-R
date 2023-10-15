# Big picture question: Does a clearer diamond mean a higher price?

# Install ggplot2
install.packages('ggplot2')

# Read data from .csv
df <- read.csv(file.choose())

# Create scatterplot
ggplot(data = df[df$carat < 2.5,],
       aes(x = carat, y = price, color = clarity)) +
  geom_point(alpha = 0.1) +
  geom_smooth()
