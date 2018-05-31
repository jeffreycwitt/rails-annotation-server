# README

The docker file sets the default RACK_ENV=development

To run in production, rails requires the "SECRET_KEY_BASE" to be set in the environment.

You can generate this with `rails secret`

Then before running docker compose, set your environment variables

export SECRET_KEY_BASE=<secret_key_base_value>
export RACK_ENV=production
