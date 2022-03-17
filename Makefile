clean_tmp:
	rm -r ./tmp
	mkdir ./tmp

donwload_covid19_data: clean_tmp
	if [ ! -f ./tmp/data.zip ] ; then \
     	wget --output-document=./tmp/data.zip https://datosabiertos.salud.gob.mx/gobmx/salud/datos_abiertos/datos_abiertos_covid19.zip; \
	fi;

unzip_data:
	7za x -o./tmp tmp/data.zip
	