# geo_analysis
  
<br>
<br>

### Autores: Jonathan Santos e Marcelo Amaral

<br>
<br>
<br>

Este trabalho tem como objetivo geral desenvolver análises gráficas, a partir da biblioteca Geopandas do Python, e manipular dados geograficas, como GeoJSON, em um banco de dados MySQL. Para isso foram selecionados alguns datasets com dados brasileiros, com informações da população, IDHM e Pib dos municípios, além do número de Unidades Básicas de Saúde e de beneficiários do Bolsa família por localidade. Esses dados foram filtrados, editados e alocados em uma base de dados MySQL, dividida em 4 tabelas, para que fossem melhor trabalhadas posteriormente. Vale ressaltar que também foi utilizada a biblioteca Folium para construção de Mapas interativos, para melhor visualização das informações ao longo do território brasileiro.

<br>
<br>

## Datasets

<br>
Os dados analisados podem ser encontrados na pasta [data](https://github.com/olvrjonathan/geo_analysis/tree/main/data) deste repositório. Dentre eles, estão:

<br>

* Dados de Unidades Básicas de Saúde no Brasil e suas coordenadas [data/cadastro_estabelecimentos_cnes.csv](https://github.com/olvrjonathan/geo_analysis/blob/main/data/cadastro_estabelecimentos_cnes.csv). Site: [dados.gov](https://dados.gov.br/dataset/unidades-basicas-de-saude-ubs) 

* Dados de beneficiários do bolsa família e de suas variações de auxílio [Bolsa_familia](https://github.com/olvrjonathan/geo_analysis/blob/main/data/misocial.csv). Site: [dados.gov](https://dados.gov.br/dataset/beneficios-bolsa-familia-mi-social)

* Dados Gerais do IBGE refente a municípios do Brasil, como população, IDHM e Pib [IBGE](https://github.com/olvrjonathan/geo_analysis/blob/main/data/Cities_Brazil_IBGE.xlsx). Site: [kaggle](https://www.kaggle.com/gabrielrs3/economy-and-population-of-cities-in-brazil-ibge)

<br>

Vale ressaltar que a pasta [GeoJSON](https://github.com/olvrjonathan/geo_analysis/tree/main/data/geojson) possui arquivos GeoJSON com os dados geográficos dos municípios do Brasil, para que seja possível realizar as visualizações dos mapas com Geopandas. Além disso, na pasta [Climatology](https://github.com/olvrjonathan/geo_analysis/tree/main/data/climatology) encontram-se alguns datasets com dados climáticos do Brasil e informações de estações meteorológicas, porém estes dados não foram utilizados nas analises finais e só estão aqui para a possibilidade de serem trabalhados posteriormente.

<br>
<br>

## Base de Dados

<br>

Para relacionar esses datasets em uma base de dados foi criado um modelo ER, como ilustrado abaixo, no qual foi decidido dividir 4 tabelas para os dados geográficos das cidades e estados, das unidades de saúde e dos beneficiários do bolsa família por estado. A base de dados "geo-analysis" foi criada no MySQL e os scripts de criação das tabelas estão no arquivo [script-sql](https://github.com/olvrjonathan/geo_analysis/blob/main/geo_analysis_create.sql). Além disso, o notebook [mysql](https://github.com/olvrjonathan/geo_analysis/blob/main/to_mysql.ipynb) faz a alocação e organização dos datasets na tabela.

![Modelo ER](https://github.com/olvrjonathan/geo_analysis/blob/main/Modelo%20ER.png

<br>
<br>

## Análises Geográficas

<br>

Por fim, no notebook [exploring](https://github.com/olvrjonathan/geo_analysis/blob/main/exploring.ipynb) foram feitas as análises desses dados e visualizações de mapas utilizando, principalmente, as bibliotecas Geopandas e Folium. O notebook está comentado explicando melhor as analises e resultados conseyguidos.

