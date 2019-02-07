
## Owl

library(tidyverse)
r <- pi/180 
pir <- pi*r
seq(-pir, pir, by = pir/200) %>% 
  expand.grid(x =., y = .) %>% 
  ggplot() +
  coord_polar() +
  theme_void() +
  geom_path(aes(x = 2*sin(y-x), y = 2*cos(x+y)),
            alpha = 0.2, size = 0.5, color = "orange4") +
  geom_path(aes(x = 2*sin(x-y), y = 2*cos(y-x)),
            alpha = 0.1, size = 0.5, color = "navajowhite") +
  geom_point(aes(x = .1, y = 1.9905), size = 10, color = "darkorange") +
  geom_point(aes(x = -.1, y = 1.9905), size = 10, color = "darkorange") +
  geom_point(aes(x = .1, y = 1.9905), size = 3, color = "tomato4") +
  geom_point(aes(x = -.1, y = 1.9905), size = 3, color = "tomato4") +
  theme(panel.background = element_rect(fill = "black"))

ggsave("owl.png", height = 6, width = 6, units = "in", dpi = 300)



