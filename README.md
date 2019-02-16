# Aedmap


## History


```
fujikawigonoMBP:git e_fujikawa$ mix phx.new aedmap
* creating aedmap/config/config.exs
* creating aedmap/config/dev.exs
* creating aedmap/config/prod.exs
* creating aedmap/config/prod.secret.exs
* creating aedmap/config/test.exs
* creating aedmap/lib/aedmap/application.ex
* creating aedmap/lib/aedmap.ex
* creating aedmap/lib/aedmap_web/channels/user_socket.ex
* creating aedmap/lib/aedmap_web/views/error_helpers.ex
* creating aedmap/lib/aedmap_web/views/error_view.ex
* creating aedmap/lib/aedmap_web/endpoint.ex
* creating aedmap/lib/aedmap_web/router.ex
* creating aedmap/lib/aedmap_web.ex
* creating aedmap/mix.exs
* creating aedmap/README.md
* creating aedmap/.formatter.exs
* creating aedmap/.gitignore
* creating aedmap/test/support/channel_case.ex
* creating aedmap/test/support/conn_case.ex
* creating aedmap/test/test_helper.exs
* creating aedmap/test/aedmap_web/views/error_view_test.exs
* creating aedmap/lib/aedmap_web/gettext.ex
* creating aedmap/priv/gettext/en/LC_MESSAGES/errors.po
* creating aedmap/priv/gettext/errors.pot
* creating aedmap/lib/aedmap/repo.ex
* creating aedmap/priv/repo/migrations/.formatter.exs
* creating aedmap/priv/repo/seeds.exs
* creating aedmap/test/support/data_case.ex
* creating aedmap/lib/aedmap_web/controllers/page_controller.ex
* creating aedmap/lib/aedmap_web/templates/layout/app.html.eex
* creating aedmap/lib/aedmap_web/templates/page/index.html.eex
* creating aedmap/lib/aedmap_web/views/layout_view.ex
* creating aedmap/lib/aedmap_web/views/page_view.ex
* creating aedmap/test/aedmap_web/controllers/page_controller_test.exs
* creating aedmap/test/aedmap_web/views/layout_view_test.exs
* creating aedmap/test/aedmap_web/views/page_view_test.exs
* creating aedmap/assets/webpack.config.js
* creating aedmap/assets/.babelrc
* creating aedmap/assets/css/app.css
* creating aedmap/assets/css/phoenix.css
* creating aedmap/assets/js/app.js
* creating aedmap/assets/js/socket.js
* creating aedmap/assets/package.json
* creating aedmap/assets/static/robots.txt
* creating aedmap/assets/static/images/phoenix.png
* creating aedmap/assets/static/favicon.ico

Fetch and install dependencies? [Yn] Y
* running mix deps.get
* running mix deps.compile
* running cd assets && npm install && node node_modules/webpack/bin/webpack.js --mode development

We are almost there! The following steps are missing:

    $ cd aedmap

Then configure your database in config/dev.exs and run:

    $ mix ecto.create

Start your Phoenix app with:

    $ mix phx.server

You can also run your app inside IEx (Interactive Elixir) as:

    $ iex -S mix phx.server

fujikawigonoMBP:git e_fujikawa$ cd aedmap/
fujikawigonoMBP:aedmap e_fujikawa$ mix ecto.create
Compiling 13 files (.ex)
Generated aedmap app
The database for Aedmap.Repo has been created
fujikawigonoMBP:aedmap e_fujikawa$ mix deps.get
Resolving Hex dependencies...
Dependency resolution completed:
Unchanged:
  connection 1.0.4
  cowboy 2.6.1
  cowlib 2.7.0
  db_connection 2.0.5
  decimal 1.7.0
  ecto 3.0.7
  ecto_sql 3.0.5
  file_system 0.2.6
  gettext 0.16.1
  jason 1.1.2
  mime 1.3.1
  phoenix 1.4.1
  phoenix_ecto 4.0.0
  phoenix_html 2.13.1
  phoenix_live_reload 1.2.0
  phoenix_pubsub 1.1.1
  plug 1.7.2
  plug_cowboy 2.0.1
  plug_crypto 1.0.0
  postgrex 0.14.1
  ranch 1.7.1
  telemetry 0.3.0
All dependencies are up to date
fujikawigonoMBP:aedmap e_fujikawa$ mix phx.server
[info] Running AedmapWeb.Endpoint with cowboy 2.6.1 at http://localhost:4000

Webpack is watching the files…

Hash: 9410b407d6e5112db4e4
Version: webpack 4.4.0
Time: 648ms
Built at: 2019-2-17 05:36:34
                Asset       Size       Chunks             Chunk Names
       ../css/app.css   10.6 KiB  ./js/app.js  [emitted]  ./js/app.js
               app.js   7.23 KiB  ./js/app.js  [emitted]  ./js/app.js
       ../favicon.ico   1.23 KiB               [emitted]
../images/phoenix.png   13.6 KiB               [emitted]
        ../robots.txt  202 bytes               [emitted]
[../deps/phoenix_html/priv/static/phoenix_html.js] 2.17 KiB {./js/app.js} [built]
[./css/app.css] 39 bytes {./js/app.js} [built]
[./js/app.js] 493 bytes {./js/app.js} [built]
   [0] multi ./js/app.js 28 bytes {./js/app.js} [built]
    + 2 hidden modules
Child mini-css-extract-plugin node_modules/css-loader/index.js!css/app.css:
    [./node_modules/css-loader/index.js!./css/app.css] ./node_modules/css-loader!./css/app.css 288 bytes {mini-css-extract-plugin} [built]
    [./node_modules/css-loader/index.js!./css/phoenix.css] ./node_modules/css-loader!./css/phoenix.css 10.9 KiB {mini-css-extract-plugin} [built]
        + 1 hidden module
^C
BREAK: (a)bort (c)ontinue (p)roc info (i)nfo (l)oaded
       (v)ersion (k)ill (D)b-tables (d)istribution
a
``` 
