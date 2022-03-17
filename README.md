# Curso Herramientas de Productividad para Ciencia de Datos
## Actividad - Descargando y analizando los datos de COVID

### 📋 Introducción 
Esta es una breve explicación, tenemos una problemática y un conjunto de datos obtenido de la [dirección general de epidemiología](https://www.gob.mx/salud/documentos/datos-abiertos-152127). Debemos utilizar las herramientas (scripting, command line, docker, etc) las cuales fueron vistas en el curso.

### 🔧 Herramientas Y Dependencias

Docker, Make, wget, Python, zip, pip, pandas, matplotlib, csvcut, csvkit.

### ✏️ El Problema
Debemos graficar el numero de personas confirmadas con COVID-19 en México el dia 16 de Marzo del 2022, por edad.


### 🕹 Pasos
**1.** Clonar el repositorio.
```
git clone https://github.com/xwalls/MCD_COVID_2019
```
**2.** Construir contenedor.
```
docker build -t MCD_COVID_2019 .
```
**3.** Ejecutar el contenedor de docker construido anteriormente.
```
docker run -it --name covid2019 MCD_COVID_2019 bash
```
**4.** El contenedor hara automaticamente lo siguente:
  ```
    RUN make download_covid19_data
    RUN make unzip_data
    RUN make cut_data
    RUN make run_analysis
  ```
**5.** Dentro del contenedor podremos encontrar como resultado el siguiente archivo: `result.png`.

**6.** La grafica deberia verse asi:

![result](https://user-images.githubusercontent.com/9456708/158909498-3ddc3daa-7e86-46be-87b3-3db6e3db1b43.png)
