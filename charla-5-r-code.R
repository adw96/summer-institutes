rf(1000000, df1 = 2, df2 = 1000) %>%
  tibble %>%
  ggplot(aes(x = .)) +
  geom_density() +
  theme_bw() +
  xlab("value of the random variable") +
  ggtitle("Distribution of the random variable") +
  xlim(0,8)

rf(1000000, df1 = 2, df2 = 1000) %>%
  matrix(ncol = 2) %>%
  apply(1, mean) %>%
  tibble %>%
  ggplot(aes(x = .)) +
  geom_density() +
  theme_bw() +
  xlab("value of the mean of 2 of the variables") +
  ggtitle("Distribution of the average of 2 of the random variables") +
  xlim(0,8)

rf(1000000, df1 = 2, df2 = 1000) %>%
  matrix(ncol = 5) %>%
  apply(1, mean) %>%
  tibble %>%
  ggplot(aes(x = .)) +
  geom_density() +
  theme_bw() +
  xlab("value of the mean of 2 of the variables") +
  ggtitle("Distribution of the average of 2 of the random variables") +
  xlim(0,8)


rf(100000, df1 = 2, df2 = 1000) %>%
  matrix(ncol = 50) %>%
  apply(1, mean) %>%
  tibble %>%
  ggplot(aes(x = .)) +
  geom_density() +
  theme_bw() +
  xlab("value of the mean of 50 of the variables") +
  ggtitle("Distribution of the average of 50 of the random variables") +
  xlim(0,8)

