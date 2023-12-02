import Config

# For production, don't forget to configure the url host
# to something meaningful, Phoenix uses this information
# when generating URLs.

# Note we also include the path to a cache manifest
# containing the digested version of static files. This
# manifest is generated by the `mix phx.digest` task,
# which you should run after static files are built and
# before starting your production server.
config :asciinema, AsciinemaWeb.Endpoint,
  http: [
    # Enable IPv6 and bind on all interfaces.
    # Set it to  {0, 0, 0, 0, 0, 0, 0, 1} for local network only access.
    # See the documentation on https://hexdocs.pm/plug_cowboy/Plug.Cowboy.html
    # for details about using IPv6 vs IPv4 and loopback vs public addresses.
    ip: {0, 0, 0, 0, 0, 0, 0, 0},
    port: 4000
  ],
  cache_static_manifest: "priv/static/cache_manifest.json"

config :asciinema, AsciinemaWeb.Admin.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  check_origin: false

# Do not print debug messages in production
config :logger, level: :info

config :asciinema, Asciinema.Repo,
  pool_size: 20,
  ssl: false

config :asciinema, Asciinema.FileStore.Local, path: "/var/opt/asciinema/uploads"
config :asciinema, Asciinema.FileCache, path: "/var/cache/asciinema"
