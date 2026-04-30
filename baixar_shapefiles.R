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

## Região ----

### Baixar ----

regiao <- geobr::read_region(year = 2019)

### Visualizar ----

regiao

ggplot() +
  geom_sf(data = regiao)

### Exportar ----

regiao |> sf::st_write("regiao.shp")

## Biomas ----

### Baixar ----

biomas <- geobr::read_biomes()

### Visualizar ----

biomas

ggplot() +
  geom_sf(data = biomas)

### Exportar ----

biomas |> sf::st_write("biomas.shp")
regiao |> sf::st_write("regiao.shp")

## Estados do Centro de Endemismo Pernambuco ----

### Filtrar ----

estados_cep <- estados |>
  dplyr::filter(abbrev_state %in% c("AL", "PE", "PB", "RN"))

### Visualizar ----

estados_cep

ggplot() +
  geom_sf(data = estados_cep)

### Exportar ----

estados_cep |> sf::st_write("estados_cep.shp")

