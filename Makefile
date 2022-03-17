clean_tmp:
	rm -r ./tmp
	mkdir ./tmp

donwload_covid19_data: clean_tmp
	if [ ! -f ./tmp/data.zip ] ; then \
     	wget --output-document=./tmp/data.zip https://www.dropbox.com/s/v6h22vx5aw3xalg/datos_abiertos_covid19.zip?dl=0; \
	fi;

unzip_data:
	unzip ./tmp/data.zip -d ./tmp
	
cut_data:
	csvcut -c SEXO,EDAD 220101COVID19MEXICO.csv > DataProblema.csv