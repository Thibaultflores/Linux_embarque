# Linux-embarqu-

Bonjour, vous trouverez dans ce readme les informations relatives aux différents projet que nous devons rendre.

Le projet_1 consiste en une calculatrice coder en bash, la calculatrice demande 2 valeurs A et B a l'utilisateur via le terminale, puis propsoe diversr choix de calculs: Addition, soustraction, multiplication, divison, et la mise a la puissance. Il faut saisir le chiffre correspondant a l'opérande a utiliser pour pouvoi leffectuer.




Le projet_2 est le code de mon site en HTML sur le quel figure mon cv, puis divers utilisations de l'html, j'ai essayé de créer des liens cliquable puis un bouton. Mon dossier html s'accompagne de 2 photos que j'affiche sur ma page html, ils doivent donc etre dans le meme fihcier que le code html.
Le but principal de ce projet est de créer son cv en html, puis grace a un logiciel tel que Apache2, de configurer un serveur local sur son réseau personel afin de mettre son site sur ce réseau.
Pour mettre en place mon serveur local a l'aide de Apache j'ai utilisé la ligne: sudo apt install apache2
répertoire du site: sudo mkdir /var/www/site
J'ai mis a jour les droits utilisateur :sudo chown -R pi /var/www/site
											                  sudo chown -R 755 /var/www/site
Il faut ensuite un virtual host: on va dans /etc/apache2/sites-available, j'ai créé : site.conf

<VirtualHost *:80>
		ServerAdmin thibault.flores.95@gmail.com				  #Adresse mail du propriétaire
		ServerName site.test				                      #Accessibilité http
		ServerAlias www.site.test				                  #Autre nom possible pour http
		DocumentRoot /var/www/site			                	#Chemin d'accès au répertoire contenant index.html
		ErrorLog ${APACHE_LOG_DIR}/error.log			        #Stockage des journaux
		CustomLog ${APACHE_LOG_DIR}/custom.log combined		#Stockage des journaux
	</VirtualHost>
j'ai ensuite activé le virtual host:sudo a2ensite mon_site.conf

sources d'aide:https://doc.ubuntu-fr.org/apache2 / https://httpd.apache.org/docs/2.4/fr/getting-started.html




Le projet_3 Comporte les exports des node-red permettant de prendre la température du cpu ainsi que d'utiliser l'api météo. 
sources d'aides :https://www.youtube.com/watch?v=X8ustpkAJ-U / https://projetsdiy.fr/debuter-node-red-raspberry-pi-installation-autostart/
