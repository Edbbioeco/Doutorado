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
