# Finance Tracking Proyect en Rails 5.1

En construcción

# Instalacion de gemas para Devise y estilo

Agregar las siguientes dependencias al archivo Gemfile

  - gem 'devise'
  - gem 'devise-bootstrap-views'
  - gem 'jquery-rails'
  - gem 'twitter-bootstrap-rails'

Ejecutar

```sh
$ bundle install --without production
$ rails generate devise:install
$ rails generate devise User
$ rake db:migrate to add users table
```

Para el uso de jquery y los estilos de bootstrap ejecutar:

```sh
$ rails generate bootstrap:install static
$ rails g bootstrap:layout application
```

En app/assets/stylesheets agregarlas siguientes lineas

```sh
 *= require devise_bootstrap_views
 *= require_tree .
 ```

Para el funcionamiento de jquery correctamente ir a app/assets/javascripts/application.js file 
y agregar el siguiente codigo:

```sh
//= require jquery
//= require twitter/bootstrap
```

Luego ejecutar el siguiente comando:

```sh
rails g devise:views:locale en
rails g devise:views:bootstrap_templates
```