# Proyecto ETL

Este proyecto consiste en un proceso de extracción, transformación y carga de datos a una base de datos MySQL.

## Extracción

La extracción de datos se realiza de dos fuentes: Booking.com y AirB&B. Para la extracción de datos de Booking.com se realiza un web scraping del sitio web utilizando la biblioteca Selenium. Se filtra por alojamientos en el área de Chamartín. Para la extracción de datos de AirB&B se utiliza un archivo CSV que contiene información sobre alojamientos en Madrid.

## Transformación

La transformación de datos consiste en tener ambos dataframes con las columnas "name" (nombre del alojamiento), "price" (precio del alojamiento), "distrito" (barrio del alojamiento) y "web" (fuente del dato). Además, se utiliza el dataframe "distritos" que contiene información sobre los distintos barrios de Madrid, con una columna "distrito" y dos más con las coordenadas de latitud y longitud del área.

## Carga

La carga de datos se realiza en una base de datos MySQL. Se utiliza el archivo create.sql para crear la estructura de la base de datos y se utiliza la biblioteca SQLAlchemy para conectarse y cargar los datos en la base de datos.

## Estructura del proyecto

El proyecto se organiza en las siguientes carpetas:

- `data`: contiene el archivo CSV con la información de los alojamientos de AirB&B y el archivo CSV con la información de los barrios de Madrid.
- `src`: contiene el archivo create.sql con la estructura de la base de datos y el archivo main.ipynb que contiene el código del proceso ETL.
- `img`: contiene las imágenes que muestran los resultados del proceso en MySQL Workbench.

El archivo main.ipynb es el archivo principal del proyecto, donde se encuentra el código que realiza el proceso completo de ETL.