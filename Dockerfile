# O arquivo DockerFile vai nos ajudar a gerar a imagem. Essa imagem gerada será usada como 
# base para trabalharmos no GitHub Actions.

# Não é uma boa prática usarmos o :latest, pois usando o :latest nossa versão sempre estará
# mudando, podendo causar então instabilidade. Usaremos aqui o golang:1.15 ao invés de 
# golang:latest
FROM golang:1.15

# Poderia ser outro nome que não fosse /app. Para mais informações sobre o WORKDIR acesse:
# https://docs.docker.com/engine/reference/builder/
WORKDIR /app

COPY . .

# Para gerar o build da nossa aplicação use o comando abaixo.
RUN go build -o mathhh

CMD ["./mathhh"]

# Rode o seguinte comando no terminal para gerar sua imagem docker: 
# docker build -t nomeQueVoceQueiraDarParaSuaImagem .

# Rode o seguinte comando no terminal para criar seu container: 
# docker run --rm nomeDaImagemQueVoceCriou