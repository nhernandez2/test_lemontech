# README

Este es un proyecto en Ruby on Rails para la prueba de selección de Lemon Tech

# Objetivo

- Es un manejador de Eventos, donde cada usuario puede Ver, Crear, Editar y Eliminar los eventos que creó.

- El usuario puede registrarse de forma sencilla y comenzar a crear sus Eventos.

- El usuario puede editar sus datos como Nombre y Edad y también cambiar su password.

- Se proporciona un pequeño Dashboard donde se muestra un grafico con los eventos agrupados por mes y una lista de los proximos 5 eventos.

# Dependencias (Requisitos de ejecución)

- Git
- Ruby 3.3.3
- Rails 7.1.3.4
- Gema bundler: `gem install bundler`
- MySql para la base de datos

# Variables de entorno y secretos

Para poder conectarse a la Base de datos es necesario agregar al archivo `application.yml` las siguientes variables 

```
    EVENT_MANAGER_DATABASE_USERNAME: 
    EVENT_MANAGER_DATABASE_PASSWORD: 
    EVENT_MANAGER_DATABASE_HOST: 
    EVENT_MANAGER_DATABASE_NAME: 
```

Para utilizar la api de Google Maps se necesitan las llaves para las credenciales de Ruby, para esto, dentro del folder `config/credentials` se debe crear el archivo `development.key` y agregar el valor entregado por correo.

# Instalación de manera local
1. Clonar el proyecto: `git clone https://github.com/nhernandez2/test_lemontech`
2. Instalar gemas `bundle install`
3. Crear la base de datos: `bundle exec rails db:create db:migrate`
4. Prender el servidor de prueba `bundle exec rails server`
5. Abrir el navegador en `localhost:3000`

# Ejecución con Docker
1. Agregar el valor de `RAILS_MASTER_KEY` que sera entregado por correo en el archivo `docker-compose.yml`
2. Ejecutar los comandos `docker-compose build` y `docker-compose up`




