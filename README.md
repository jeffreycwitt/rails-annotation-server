# README

The docker file sets the default RACK_ENV=development

To run in production, rails requires the "SECRET_KEY_BASE" to be set in the environment.

You can generate this with `rails secret`

Then before running docker compose, set your environment variables

export SECRET_KEY_BASE=<secret_key_base_value>
export RACK_ENV=production

To build the image run `docker-compose build`

To run the application run `docker-compose up`

To run in detach mode run `docker-compose up -d`

In cases people have had trouble with not all the rails migrations finishing,
if this is the case you can run them manually shelling into the container

`docker exec -it railsannotationserver_web_1 bash`

then you can run the migration command `bin/rails db:migrate`
