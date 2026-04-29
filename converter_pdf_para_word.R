# Pacotes ----

library(tesseract)

library(officer)

# Importar PDF ----

pdf <- tesseract::ocr("C:/Users/LENOVO/OneDrive/Documentos/Projeto doutorado/Anteprojeto - Ericles Charles.pdf")

pdf

# Criar um .docx vazio ----

doc <- officer::read_docx()

doc
