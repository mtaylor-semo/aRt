
library(tidyverse)

seq(-pi,pi,0.02) %>% 
  expand.grid(x=.,y=.) %>% 
  ggplot() +
  geom_point(aes(x = 2*-sin(x), y = 3*-sin(x)),
             alpha = 0.5, shape = 20, size = 1)


x <- seq(-6*pi,6*pi,.1)
y = cos(x)

r <- pi/180 
  
seq(-pi, pi, by = .05) %>% 
  expand.grid(x =.*r, y = .*r) %>% 
  ggplot() +
  geom_path(aes(x = 2*sin(x-y), y = 2*cos(y-x)),
            alpha = 0.1, size = 0.5, color = "firebrick") +
  coord_polar() +
  theme_void() +
  geom_path(aes(x = 2*sin(y-x), y = 2*cos(x+y)),
            alpha = 0.1, size = 0.5, color = "yellow") +
  geom_point(aes(x = .1, y = 1.99125), size = 10, color = "darkorange") +
  geom_point(aes(x = -.1, y = 1.99125), size = 10, color = "darkorange") +
  geom_point(aes(x = .1, y = 1.99125), size = 3, color = "black") +
  geom_point(aes(x = -.1, y = 1.99125), size = 3, color = "black") +
  theme(panel.background = element_rect(fill = "black"))



+
  geom_path(aes(2*sin(x), 2*cos(y)))


+
  geom_path(aes(x = 2*tan(x-y), y = 2*tan(y-x)),
            alpha = 0.1, size = 0.5, color = "forestgreen")


p <-  data_frame(x = x, y = y) %>% 
  ggplot() +
  coord_polar(theta = "x")

+
  geom_path(aes(x,y)) +
  geom_path(aes(sin(x), y), color = "blue")+
  geom_path(aes(2+sin(x), y), color = "orange") +
  geom_path(aes(3+sin(x), y), color = "orange") +
  geom_path(aes(4+sin(x), y), color = "orange") +
  geom_path(aes(5+sin(x), y), color = "orange") +
  geom_path(aes(6+sin(x), y), color = "orange")

for (i in 1:12){
  p <- p + geom_path(aes_string(i + sin(x), y, color = i))
}
p

+
#  geom_path(aes(x,y)) +
  geom_path(aes(sin(x), y), color = "blue")+
  geom_path(aes(2+sin(x), y), color = "orange") +
  geom_path(aes(3+sin(x), y), color = "orange") +
  geom_path(aes(4+sin(x), y), color = "orange") +
  geom_path(aes(5+sin(x), y), color = "orange") +
  geom_path(aes(6+sin(x), y), color = "orange")

+


seq(-pi,pi,0.02) %>% 
  expand.grid(x=.,y=.) %>% 
  ggplot() +
  geom_path(aes(x, 1/sin(x)))
