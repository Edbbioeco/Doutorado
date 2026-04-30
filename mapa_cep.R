# Pacotes ----

library(geobr)

library(tidyverse)

library(sf)

library(ggspatial)

library(ggview)

library(patchwork)

# Dados ----

## Estados do Brasil ----

### Importar ----

br <- geobr::read_state(year = 2019)

### Visualizar ----

br

ggplot() +
  geom_sf(data = br, color = "black")
