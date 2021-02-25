compilar:limpiar
	mkdir bin
	find src -name *.java | xargs javac -cp bin -d bin	
ejecutar:compilar
	java -cp bin principal.Principal
limpiar:
	rm -rf bin
jar:compilar
	jar cvfm concesionario.jar Manifest.txt -C bin .
javadoc: 
	find src -name *.java | xargs javadoc -d doc/javadoc
