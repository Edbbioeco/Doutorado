# Pacotes ----

library(sf)

library(tidyverse)

library(ggspatial)

library(ggview)

library(patchwork)

# Dados ----

## Estados do Brasil ----

### Importar ----

br <- sf::st_read("estados.shp")

### Visualizar ----

br

ggplot() +
  geom_sf(data = br, color = "black")
