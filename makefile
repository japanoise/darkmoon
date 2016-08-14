TARGET=darkmoon-chameleon

all: ${TARGET}.xpi

${TARGET}.xpi: ${TARGET}.zip
	mv --verbose $^ $@

${TARGET}.zip:
	cd src && zip -r $@ *
	mv src/$@ ./

clean:
	rm -rf ${TARGET}.xpi
	rm -rf ${TARGET}.zip
