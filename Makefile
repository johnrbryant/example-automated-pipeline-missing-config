.PHONY: all clean

all: report.html

out/people.rds: src/01-read-people.R data/people.xlsx
	Rscript src/01-read-people.R

out/measurements.rds: src/02-read-measurements.R data/measurements.xlsx
	Rscript src/02-read-measurements.R

out/measurements-modified.rds: src/03-add-variable.R out/measurements.rds config.yaml
	Rscript src/03-add-variable.R

out/combined.csv: src/04-join-data.R out/people.rds out/measurements-modified.rds
	Rscript src/04-join-data.R

out/values.png: src/05-create-plot.R out/combined.csv 
	Rscript src/05-create-plot.R

report.html: report.qmd out/combined.csv out/values.png config.yaml
	quarto render report.qmd

clean:
	rm -f out/people.rds \
	      out/measurements.rds \
	      out/measurements-modified.rds \
	      out/combined.csv \
	      out/values.png \
	      report.html
