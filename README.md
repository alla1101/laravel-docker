# laravel-docker
requirements:  docker-compose
			   change the volume in docker-compose to a new folder where your project is.


usage:

start: docker-compose up
stop: docker-compose stop
execute a composer command: docker-compose exec app composer
execute a artisan command: docker-compose exec app php artisan list

thanks and good night

Note:

i didn't build it on my own, only changed docker-compose.yml and added few lines on my own
the original creator is https://medium.com/@shakyShane/laravel-docker-part-1-setup-for-development-e3daaefaf3c