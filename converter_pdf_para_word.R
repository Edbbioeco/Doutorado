# Pacotes ----

library(tesseract)

library(officer)

# Importar PDF ----

pdf <- tesseract::ocr("C:/Users/LENOVO/OneDrive/Documentos/Projeto doutorado/Anteprojeto - Ericles Charles.pdf")

pdf

# Criar um .docx vazio ----

doc <- officer::read_docx()

doc

# Converter para .DOCX ----

doc_convertido <- officer::body_add_par(doc, pdf |> paste(collapse = "\n\n"))

print(doc_convertido, target = "C:/Users/LENOVO/OneDrive/Documentos/Projeto doutorado/anteprojeto_convertido.docx")
