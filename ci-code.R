amys_secret_data_generating_process <- function(n) {
  rf(n, df1 = 1, df2 = 1000)
}

replicate(10000,
          amys_secret_data_generating_process(50) %>% mean) %>%
  density %>% plot(xlim = c(0,8))

amys_secret_data_generating_process(30) %>% mean