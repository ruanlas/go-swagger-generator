# go-swagger-generator
Este repositório é uma dockerização do projeto https://github.com/swaggo/swag.

## Gerando a documentação em swagger
Para gerar a documentação em swagger, primeiramente o projeto em Go já deve estar com as anotações da documentação, seguindo as orientações da documentação https://github.com/swaggo/swag#declarative-comments-format, e também no repositório https://github.com/swaggo/gin-swagger.

Com as anotações feitas, basta executar o seguinte comando na raiz do projeto Go (OBS: É necessário ter o docker instalado na máquina)

```
docker run --rm -it -v $(pwd):/work ruanlas/go-swagger-generator:v1.0.0 swag init -g <path_to_main_file>
```
