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

# Mapa ----

## Mapa principal ----

mapa_princ <- ggplot() +
  geom_sf(data = estados,
          aes(color = "Brazil",
              fill = "Brazil"),
          linewidth = 1) +
  geom_sf(data = cep,
          aes(color = "Endemism Pernambuco Center",
              fill = "Endemism Pernambuco Center")) +
  geom_sf(data = ma,
          aes(color = "Atlantic Forest",
              fill = "Atlantic Forest"),
          linewidth = 1) +
  geom_sf(data = estados,
          color = "black",
          fill = "transparent",
          linewidth = 1) +
  scale_color_manual(values = c("Brazil" = "black",
                                "Atlantic Forest" = "darkgreen",
                                "Endemism Pernambuco Center" = "limegreen"),
                     breaks = c("Brazil",
                                "Atlantic Forest",
                                "Endemism Pernambuco Center")) +
  scale_fill_manual(values = c("Brazil" = "gray",
                                "Atlantic Forest" = "transparent",
                                "Endemism Pernambuco Center" = "limegreen"),
                    breaks = c("Brazil",
                               "Atlantic Forest",
                               "Endemism Pernambuco Center")) +
  labs(color = NULL,
       fill = NULL) +
  coord_sf(xlim = c(-35, -41),
           ylim = c(-10.5, -5),
           label_graticule = "NSWE") +
  ggspatial::annotation_scale(location = "bl",
                              text_cex = 2.5,
                              bar_cols = c("black", "gold"),
                              height = unit(1, "cm")) +
  theme_minimal() +
  theme(axis.text = element_text(color = "black", size = 17.5),
        legend.text = element_text(color = "black", size = 17.5),
        legend.title = element_text(color = "black", size = 17.5),
        legend.position = "bottom") +
  ggview::canvas(height = 10, width = 12)

mapa_princ
