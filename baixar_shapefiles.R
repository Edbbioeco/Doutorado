# Pacotes ----

library(geobr)

library(tidyverse)

library(sf)

# Shapefiles ----

## Brasil ----

### Baixar ----

br <- geobr::read_country(year = 2019)

### Visualizar ----

br

ggplot() +
  geom_sf(data = br)

### Exportar ----

br |> sf::st_write("br.shp")

## Estados ----

### Baixar ----

estados <- geobr::read_state(year = 2019)

### Visualizar ----

estados

ggplot() +
  geom_sf(data = estados)

### Exportar ----

estados |> sf::st_write("estados.shp")

## Estados ----

### Baixar ----

regiao <- geobr::read_region(year = 2019)

### Visualizar ----

regiao

ggplot() +
  geom_sf(data = regiao)

### Exportar ----

regiao |> sf::st_write("regiao.shp")

