all:
	./build.sh

clean:
	cd latex && make clean && rm -f figures/*.pdf
	cd notebooks && rm -f *.html && rm -f figures/*.svg
