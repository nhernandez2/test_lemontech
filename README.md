# README

Este es un proyecto en Ruby on Rails para la prueba de selección de Lemon Tech

# Objetivo

- Es un manejador de Eventos, donde cada usuario puede Ver, Crear, Editar y Eliminar los eventos que creó.

- El usuario puede registrarse de forma sencilla y comenzar a crear sus Eventos.

- El usuario puede editar sus datos como Nombre y Edad y también cambiar su password.

- Se proporciona un pequeño Dashboard donde se muestra un grafico con los eventos agrupados por mes y una lista de los proximos 5 eventos.

# Dependencias (Requisitos de ejecución)

- Git, para clonar el proyecto, instalar según el sistema operativo (o descargar como ZIP)
- Ruby 3.3.3
- Rails 7.1.3.4
- Gema bundler: `gem install bundler`

# Instalación
1. Clonar el proyecto: `git clone https://github.com/nhernandez2/test_lemontech`
2. Instalar las gemas `bundle install`
3. Crear la base de datos: `rails db:create db:migrate`
4. [Opcional] Popular la base de datos con los datos de pruena: `rails db:seed`
5. Prender el servidor de prueba `rails server`
6. Abrir el navegador en `localhost:3000`
7. [Opcional] Para borrar la db en caso de querer volver a empezar `rails db:drop`

