clean_tmp:
	rm --force --recursive tmp
	rm --force --recursive  data
	mkdir tmp
	mkdir data

download_covid19_data: clean_tmp
	if [ ! -f tmp/data.zip ] ; then \
     	wget --output-document=tmp/data.zip https://www.dropbox.com/s/v6h22vx5aw3xalg/datos_abiertos_covid19.zip?dl=0; \
	fi;

unzip_data:
	unzip tmp/data.zip -d tmp
	
cut_data:
	csvcut -c SEXO,EDAD tmp/220316COVID19MEXICO.csv > data/filtered.csv

run_analysis:
	python src/analysis.py