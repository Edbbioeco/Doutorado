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

## Estados do CEP ----

### Importar ----

estados_cep <- sf::st_read("estados_cep.shp")

### Visualizar ----

ggplot() +
  geom_sf(data = br, color = "black") +
  geom_sf(data = estados_cep, color = "black", fill = "goldenrod")

