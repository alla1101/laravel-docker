# laravel-docker
requirements:  docker-compose
			   change the volume in docker-compose to a new folder where your project is.


usage:

<to start> docker-compose up
<to stop> docker-compose stop
<to execute a composer command> docker-compose exec app php composer
<to execute a artisan command> docker-compose exec app php artisan list

thanks and good night

Note:

i didn't build it on my own, only changed docker-compose.yml and added few lines on my own
the original creator is https://medium.com/@shakyShane/laravel-docker-part-1-setup-for-development-e3daaefaf3c