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

## Mata Atlântica ----

### Importar ----

ma <- sf::st_read("biomas.shp") |>
  dplyr::filter(name_biome == "Mata Atlântica")

### Visualizar ----

ma

ggplot() +
  geom_sf(data = br, color = "black") +
  geom_sf(data = ma, color = "limegreen", fill = "limegreen") +
  geom_sf(data = br, color = "black", fill = "transparent")

## CEP ----

### Importar ----

cep <- sf::st_read("cep.shp")

### Visualizar ----

cep

ggplot() +
  geom_sf(data = br, color = "black") +
  geom_sf(data = ma, color = "limegreen", fill = "limegreen") +
  geom_sf(data = cep, color = "darkgreen", fill = "darkgreen") +
  geom_sf(data = br, color = "black", fill = "transparent")

