<center>![](http://www.portadasfacebook.net/panel/watermark.php?FOTO=portadas/piedra-papel-o-tijera.jpg)</center>


Práctica 3:
=========== 

 Práctica 6: Rock Paper Scissors en Heroku


1. Objetivo
-----------
 Añadir la práctica anterior a heroku
	
  

2. Instalación y arranque de la aplicación
------------------------------------------
	2.1 gem install heroku
	2.2 heroku login
	2.3 Crea un *Procfile y dentro añade web: bundle exec rackup config.ru -p $PORT
	2.4 foreman start
	2.5 	git init
			git add .
			git commit -m "init"
	2.6 heroku create
	2.7	git push heroku master
	2.8 heroku open

3. Arrancar Test
	3.1 rake test
	3.2 rake rspec
	3.3 rake rspech (genera Html)

4. Ejecución
------------
  4.1 <br>En Heroku sin necesidad de instalar nada:</br> http://stormy-river-1001.herokuapp.com/
  4.2 rake e ir a www.example.com:9292 como en la práctica anterior

5.Desarrollador
---------------

	Ángela Hdez D.

<center>![](http://www.chistes21.com/img/chistes/3935_piedra-papel-o-tijera.jpg)</center>
