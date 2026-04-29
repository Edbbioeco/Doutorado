# Pacottes ----

library(gert)

library(tidyverse)

# Arquivos áptos ----

gert::git_status() |>
  as.data.frame()

# Adicionar ----

gert::git_add(files = "git_comandos.R") |>
  as.data.frame()

# Commit----

gert::git_commit(message = "Script para comandos de Git")

# Push ----

gert::git_push(remote = "origin")

# Pull ----

gert::git_pull(remote = "origin")

# Resetar ----

gert::git_reset_mixed()

gert::git_reset_soft()
