# Aedmap

## Environment

* Git version 2.20.1 or later
* Docker-compose version 1.18.0 or later
* Docker version 17.12.0-ce or later

## Local Launch

* Open Terminal, Move To Workspace

* Clone This Repository

```
git clone https://github.com/Eigo-Mt-Fuji/aedmap.git aedmap
```

* Build Server

```
docker-compose build
```

* Launch Server

```
docker-compose up -d
```

* Open `http://localhost:4000/` with Your Browser

* Shutdown Server

```
docker-compose down
```

## Gigalixir 

* Install

```
sudo pip install gigalixir --ignore-installed six
```

* Login

```
gigalixir login
```

* Create App (the name will be assigned to APP_NAME)

```
export APP_NAME=$(gigalixir create)
```

* Create Postgres Database On Gigalixir

```
gigalixir pg:create --free
```

* Set Configrations

```
gigalixir config:set APP_NAME=$APP_NAME
gigalixir config:set POOL_SIZE=2 # gigalixir free only allow 2 db connections at the same time.
gigalixir config:set PORT=4000
gigalixir config:set SECRET_KEY_BASE=$(mix phx.gen.secret)
```

* Setup Gigalixir Git Remote 

```
cat ~/.netrc
git remote add gigalixir https://<Mail Address>:<Password>@git.gigalixir.com/$APP_NAME.git # e.g. https://efg.river%40gmail.com:be1b4906-xxxx-4xxx-xxxx-xxxx@git.gigalixir.com/grouchy-crowded-asianelephant.git
git fetch gigalixir
```

* Push Source

```
git add .
git commit -m "Update sources."
git push gigalixir master
```

* Run Db Migration (Check Logs After Migration Finished)

```
gigalixir run mix ecto.migrate # migration
gigalixir logs 
```

* Open Browser

```
gigalixir open
```

* Check Process Status

```
gigalixir ps
```

## Gallary

* ![screenshot-1.png](./docs/screenshot-1.png)
* ![screenshot-2.png](./docs/screenshot-2.png)
* ![screenshot-3.png](./docs/screenshot-3.png)
* ![screenshot-4.png](./docs/screenshot-4.png)
* ![screenshot-5.png](./docs/screenshot-5.png)
* ![screenshot-6.png](./docs/screenshot-6.png)
* ![screenshot-7.png](./docs/screenshot-7.png)
* ![screenshot-8.png](./docs/screenshot-8.png)
* ![screenshot-9.png](./docs/screenshot-9.png)
* ![screenshot-10.png](./docs/screenshot-10.png)
* ![screenshot-11.png](./docs/screenshot-11.png)
* ![screenshot-12.png](./docs/screenshot-12.png)
* ![screenshot-13.png](./docs/screenshot-13.png)
* ![screenshot-14.png](./docs/screenshot-14.png)
* ![screenshot-15.png](./docs/screenshot-15.png)
* ![screenshot-16.png](./docs/screenshot-16.png)
* ![screenshot-17.png](./docs/screenshot-17.png)
* ![screenshot-18.png](./docs/screenshot-18.png)
* ![screenshot-19.png](./docs/screenshot-19.png)
* ![screenshot-20.png](./docs/screenshot-20.png)

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

fujikawigonoMBP:aedmap e_fujikawa$ mix deps.get
warning: the Collectable protocol is deprecated for non-empty lists. The behaviour of things like Enum.into/2 or "for" comprehensions with an :into option is incorrect when collecting into non-empty lists. If you're collecting into a non-empty keyword list, consider using Keyword.merge/2 instead. If you're collecting into a non-empty list, consider concatenating the two lists with the ++ operator.
  (elixir) lib/collectable.ex:83: Collectable.List.into/1
  (hex) lib/hex/remote_converger.ex:462: Hex.RemoteConverger.prepare_locked/3
  (hex) lib/hex/remote_converger.ex:38: Hex.RemoteConverger.converge/2
  (mix) lib/mix/dep/converger.ex:95: Mix.Dep.Converger.all/4
  (mix) lib/mix/dep/converger.ex:51: Mix.Dep.Converger.converge/4

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
New:
  certifi 2.4.2
  combine 0.10.0
  csv 2.1.1
  excelion 0.0.5
  hackney 1.15.0
  httpoison 1.5.0
  idna 6.0.0
  metrics 1.0.1
  mimerl 1.0.2
  parallel_stream 1.0.6
  parse_trans 3.3.0
  poison 3.1.0
  simple_agent 0.0.7
  smallex 0.2.3
  ssl_verify_fun 1.1.4
  statistics 0.5.1
  sweet_xml 0.6.5
  timex 3.5.0
  tzdata 0.5.19
  unicode_util_compat 0.4.1
  xlsx_parser 0.0.10
* Getting smallex (Hex package)
* Getting csv (Hex package)
* Getting excelion (Hex package)
* Getting httpoison (Hex package)
* Getting poison (Hex package)
* Getting statistics (Hex package)
* Getting timex (Hex package)
* Getting combine (Hex package)
* Getting tzdata (Hex package)
* Getting hackney (Hex package)
* Getting certifi (Hex package)
* Getting idna (Hex package)
* Getting metrics (Hex package)
* Getting mimerl (Hex package)
* Getting ssl_verify_fun (Hex package)
* Getting unicode_util_compat (Hex package)
* Getting parse_trans (Hex package)
* Getting xlsx_parser (Hex package)
* Getting simple_agent (Hex package)
* Getting sweet_xml (Hex package)
* Getting parallel_stream (Hex package)
fujikawigonoMBP:aedmap e_fujikawa$ mix phx.server
===> Compiling parse_trans
===> Compiling mimerl
===> Compiling metrics
===> Compiling unicode_util_compat
^[[C===> Compiling idna
warning: found quoted keyword "coveralls" but the quotes are not required. Note that keywords are always atoms, even when quoted. Similar to atoms, keywords made exclusively of Unicode letters, numbers, underscore, and @ do not require quotes
  /Users/e_fujikawa/Documents/git/aedmap/deps/parallel_stream/mix.exs:17

==> parallel_stream
Compiling 11 files (.ex)
warning: Stream.chunk/4 is deprecated. Use Stream.chunk_every/4 instead
  lib/parallel_stream/producer.ex:16

Generated parallel_stream app
warning: String.strip/1 is deprecated. Use String.trim/1 instead
  /Users/e_fujikawa/Documents/git/aedmap/deps/poison/mix.exs:4

==> poison
Compiling 4 files (.ex)
warning: Integer.to_char_list/2 is deprecated. Use Integer.to_charlist/2 instead
  lib/poison/encoder.ex:173

Generated poison app
==> ssl_verify_fun
Compiling 7 files (.erl)
Generated ssl_verify_fun app
==> statistics
Compiling 12 files (.ex)
Generated statistics app
==> combine
Compiling 6 files (.ex)
Generated combine app
warning: found quoted keyword "coveralls" but the quotes are not required. Note that keywords are always atoms, even when quoted. Similar to atoms, keywords made exclusively of Unicode letters, numbers, underscore, and @ do not require quotes
  /Users/e_fujikawa/Documents/git/aedmap/deps/csv/mix.exs:18

==> csv
Compiling 10 files (.ex)
warning: outdented heredoc line. The contents inside the heredoc should be indented at the same level as the closing """. The following is forbidden:

    def text do
      """
    contents
      """
    end

Instead make sure the contents are indented as much as the heredoc closing:

    def text do
      """
      contents
      """
    end

The current heredoc line is indented too little
  lib/csv.ex:69

Generated csv app
===> Compiling certifi
===> Compiling hackney
==> tzdata
Compiling 16 files (.ex)
Generated tzdata app
==> timex
Compiling 58 files (.ex)
Generated timex app
==> sweet_xml
Compiling 1 file (.ex)
warning: "not expr1 in expr2" is deprecated. Instead use "expr1 not in expr2" if you require Elixir v1.5+, or "not(expr1 in expr2)" if you have to support earlier Elixir versions
  lib/sweet_xml.ex:193

warning: Kernel.to_char_list/1 is deprecated. Use Kernel.to_charlist/1 instead
  lib/sweet_xml.ex:210

warning: Kernel.to_char_list/1 is deprecated. Use Kernel.to_charlist/1 instead
  lib/sweet_xml.ex:210

warning: Kernel.to_char_list/1 is deprecated. Use Kernel.to_charlist/1 instead
  lib/sweet_xml.ex:210

warning: String.to_char_list/1 is deprecated. Use String.to_charlist/1 instead
  lib/sweet_xml.ex:192

Generated sweet_xml app
==> httpoison
Compiling 3 files (.ex)
Generated httpoison app
==> ecto
Compiling 54 files (.ex)
Generated ecto app
warning: variable "deps" does not exist and is being expanded to "deps()", please use parentheses to remove the ambiguity or change the variable name
  /Users/e_fujikawa/Documents/git/aedmap/deps/simple_agent/mix.exs:10

warning: variable "description" does not exist and is being expanded to "description()", please use parentheses to remove the ambiguity or change the variable name
  /Users/e_fujikawa/Documents/git/aedmap/deps/simple_agent/mix.exs:11

warning: variable "package" does not exist and is being expanded to "package()", please use parentheses to remove the ambiguity or change the variable name
  /Users/e_fujikawa/Documents/git/aedmap/deps/simple_agent/mix.exs:12

==> simple_agent
Compiling 1 file (.ex)
Generated simple_agent app
==> xlsx_parser
Compiling 3 files (.ex)
warning: Kernel.to_char_list/1 is deprecated. Use Kernel.to_charlist/1 instead
  lib/xlsx_parser/xlsx_util.ex:21

warning: Kernel.to_char_list/1 is deprecated. Use Kernel.to_charlist/1 instead
  lib/xlsx_parser/xlsx_util.ex:27

warning: Kernel.to_char_list/1 is deprecated. Use Kernel.to_charlist/1 instead
Found at 2 locations:
  lib/xlsx_parser/xlsx_util.ex:21
  lib/xlsx_parser/xlsx_util.ex:27

warning: String.to_char_list/1 is deprecated. Use String.to_charlist/1 instead
Found at 2 locations:
  lib/xlsx_parser/xlsx_util.ex:70
  lib/xlsx_parser/xml_parser.ex:81

Generated xlsx_parser app
==> excelion
Compiling 1 file (.ex)
warning: variable "alphas" does not exist and is being expanded to "alphas()", please use parentheses to remove the ambiguity or change the variable name
  lib/excelion.ex:111

warning: variable "alphas" does not exist and is being expanded to "alphas()", please use parentheses to remove the ambiguity or change the variable name
  lib/excelion.ex:116

warning: Enum.chunk/2 is deprecated. Use Enum.chunk_every/2 instead
  lib/excelion.ex:68

Generated excelion app
==> ecto_sql
Compiling 23 files (.ex)
Generated ecto_sql app
==> smallex
Compiling 9 files (.ex)
Generated smallex app
==> phoenix_ecto
Compiling 6 files (.ex)
Generated phoenix_ecto app
==> aedmap
Compiling 13 files (.ex)
Generated aedmap app
[info] Running AedmapWeb.Endpoint with cowboy 2.6.1 at http://localhost:4000

Webpack is watching the files…

Hash: 9410b407d6e5112db4e4
Version: webpack 4.4.0
Time: 575ms
Built at: 2019-2-17 05:40:37
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
[debug] Tzdata polling for update.
[info] tzdata release in place is from a file last modified Thu, 03 May 2018 23:55:14 GMT. Release file on server was last modified Mon, 31 Dec 2018 01:25:12 GMT.
[debug] Tzdata downloading new data from https://data.iana.org/time-zones/tzdata-latest.tar.gz
[debug] Tzdata data downloaded. Release version 2018i.
[info] Tzdata has updated the release from 2018e to 2018i
[debug] Tzdata deleting ETS table for version 2018e
[debug] Tzdata deleting ETS table file for version 2018e

fujikawigonoMBP:aedmap e_fujikawa$ nano lib/aedmap_web/templates/page/index.html.eex
fujikawigonoMBP:aedmap e_fujikawa$ mix phx.server
Compiling 1 file (.ex)
[info] Running AedmapWeb.Endpoint with cowboy 2.6.1 at http://localhost:4000

Webpack is watching the files…

Hash: 9410b407d6e5112db4e4
Version: webpack 4.4.0
Time: 588ms
Built at: 2019-2-17 05:46:49
                Asset       Size       Chunks             Chunk Names
       ../css/app.css   10.6 KiB  ./js/app.js  [emitted]  ./js/app.js
               app.js   7.23 KiB  ./js/app.js  [emitted]  ./js/app.js
       ../favicon.ico   1.23 KiB               [emitted]
        ../robots.txt  202 bytes               [emitted]
../images/phoenix.png   13.6 KiB               [emitted]
[../deps/phoenix_html/priv/static/phoenix_html.js] 2.17 KiB {./js/app.js} [built]
[./css/app.css] 39 bytes {./js/app.js} [built]
[./js/app.js] 493 bytes {./js/app.js} [built]
   [0] multi ./js/app.js 28 bytes {./js/app.js} [built]
    + 2 hidden modules
Child mini-css-extract-plugin node_modules/css-loader/index.js!css/app.css:
    [./node_modules/css-loader/index.js!./css/app.css] ./node_modules/css-loader!./css/app.css 288 bytes {mini-css-extract-plugin} [built]
    [./node_modules/css-loader/index.js!./css/phoenix.css] ./node_modules/css-loader!./css/phoenix.css 10.9 KiB {mini-css-extract-plugin} [built]
        + 1 hidden module
[info] GET /
[debug] Processing with AedmapWeb.PageController.index/2
  Parameters: %{}
  Pipelines: [:browser]
[info] Sent 200 in 3097ms
[info] Replied phoenix:live_reload :ok
^C
BREAK: (a)bort (c)ontinue (p)roc info (i)nfo (l)oaded
       (v)ersion (k)ill (D)b-tables (d)istribution
a
fujikawigonoMBP:aedmap e_fujikawa$

fujikawigonoMBP:aedmap e_fujikawa$ nano lib/aedmap_web/templates/layout/app.html.eex
fujikawigonoMBP:aedmap e_fujikawa$ mix phx.server
Compiling 1 file (.ex)
[info] Running AedmapWeb.Endpoint with cowboy 2.6.1 at http://localhost:4000

Webpack is watching the files…

Hash: 9410b407d6e5112db4e4
Version: webpack 4.4.0
Time: 601ms
Built at: 2019-2-17 05:50:08
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
[info] GET /
[debug] Processing with AedmapWeb.PageController.index/2
  Parameters: %{}
  Pipelines: [:browser]
[info] Sent 200 in 2828ms
[info] Replied phoenix:live_reload :ok
^C
BREAK: (a)bort (c)ontinue (p)roc info (i)nfo (l)oaded
       (v)ersion (k)ill (D)b-tables (d)istribution
a
fujikawigonoMBP:aedmap e_fujikawa$ nano lib/aedmap_web/templates/layout/app.html.eex
fujikawigonoMBP:aedmap e_fujikawa$ mix phx.server
Compiling 2 files (.ex)
[info] Running AedmapWeb.Endpoint with cowboy 2.6.1 at http://localhost:4000

Webpack is watching the files…

Hash: 9410b407d6e5112db4e4
Version: webpack 4.4.0
Time: 566ms
Built at: 2019-2-17 05:54:02
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
[info] GET /
[debug] Processing with AedmapWeb.PageController.index/2
  Parameters: %{}
  Pipelines: [:browser]
[info] Sent 200 in 3104ms
[info] Replied phoenix:live_reload :ok
[info] Replied phoenix:live_reload :ok
^C
BREAK: (a)bort (c)ontinue (p)roc info (i)nfo (l)oaded
       (v)ersion (k)ill (D)b-tables (d)istribution
a
fujikawigonoMBP:aedmap e_fujikawa$ nano lib/aedmap_web/templates/page/index.html.eex
fujikawigonoMBP:aedmap e_fujikawa$ mix phx.server
Compiling 1 file (.ex)
[info] Running AedmapWeb.Endpoint with cowboy 2.6.1 at http://localhost:4000

Webpack is watching the files…

Hash: 9410b407d6e5112db4e4
Version: webpack 4.4.0
Time: 634ms
Built at: 2019-2-17 06:00:17
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
[info] Replied phoenix:live_reload :ok
[info] GET /
[debug] Processing with AedmapWeb.PageController.index/2
  Parameters: %{}
  Pipelines: [:browser]
[info] Sent 200 in 2445ms
[info] Replied phoenix:live_reload :ok
[info] Replied phoenix:live_reload :ok
^C
BREAK: (a)bort (c)ontinue (p)roc info (i)nfo (l)oaded
       (v)ersion (k)ill (D)b-tables (d)istribution
a

fujikawigonoMBP:aedmap e_fujikawa$ mix phx.gen.html AED Location locations latitude:float longitude:float locationName:string
* creating lib/aedmap_web/controllers/location_controller.ex
* creating lib/aedmap_web/templates/location/edit.html.eex
* creating lib/aedmap_web/templates/location/form.html.eex
* creating lib/aedmap_web/templates/location/index.html.eex
* creating lib/aedmap_web/templates/location/new.html.eex
* creating lib/aedmap_web/templates/location/show.html.eex
* creating lib/aedmap_web/views/location_view.ex
* creating test/aedmap_web/controllers/location_controller_test.exs
* creating lib/aedmap/aed/location.ex
* creating priv/repo/migrations/20190216210248_create_locations.exs
* creating lib/aedmap/aed.ex
* injecting lib/aedmap/aed.ex
* creating test/aedmap/aed/aed_test.exs
* injecting test/aedmap/aed/aed_test.exs

Add the resource to your browser scope in lib/aedmap_web/router.ex:

    resources "/locations", LocationController


Remember to update your repository by running migrations:

    $ mix ecto.migrate

fujikawigonoMBP:aedmap e_fujikawa$ nano lib/aedmap_web/router.ex
fujikawigonoMBP:aedmap e_fujikawa$ mix ecto.migrate
Compiling 6 files (.ex)
Generated aedmap app
[info] == Running 20190216210248 Aedmap.Repo.Migrations.CreateLocations.change/0 forward
[info] create table locations
[info] == Migrated 20190216210248 in 0.0s
fujikawigonoMBP:aedmap e_fujikawa$ iex -S mix phx.server
Erlang/OTP 21 [erts-10.1] [source] [64-bit] [smp:8:8] [ds:8:8:10] [async-threads:1] [hipe]

[info] Running AedmapWeb.Endpoint with cowboy 2.6.1 at http://localhost:4000
Interactive Elixir (1.8.1) - press Ctrl+C to exit (type h() ENTER for help)
iex 1>
Webpack is watching the files…

Hash: 9410b407d6e5112db4e4
Version: webpack 4.4.0
Time: 623ms
Built at: 2019-2-17 06:03:43
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
[info] GET /locations
[debug] Processing with AedmapWeb.LocationController.index/2
  Parameters: %{}
  Pipelines: [:browser]
[debug] QUERY OK source="locations" db=0.7ms decode=2.2ms queue=1.0ms
SELECT l0."id", l0."latitude", l0."locationName", l0."longitude", l0."inserted_at", l0."updated_at" FROM "locations" AS l0 []
[info] Sent 200 in 64ms
[info] Replied phoenix:live_reload :ok
[info] Replied phoenix:live_reload :ok

BREAK: (a)bort (c)ontinue (p)roc info (i)nfo (l)oaded
       (v)ersion (k)ill (D)b-tables (d)istribution
a
fujikawigonoMBP:aedmap e_fujikawa$ iex -S mix phx.server
Erlang/OTP 21 [erts-10.1] [source] [64-bit] [smp:8:8] [ds:8:8:10] [async-threads:1] [hipe]

[info] Running AedmapWeb.Endpoint with cowboy 2.6.1 at http://localhost:4000
Interactive Elixir (1.8.1) - press Ctrl+C to exit (type h() ENTER for help)
iex 1>
nil
iex 2>
nil
iex 3>
Webpack is watching the files…

Ecto.Adapters.SQL.queryHash: 9410b407d6e5112db4e4ROM locations", [])
Version: webpack 4.4.0
Time: 556ms
Built at: 2019-2-17 06:10:18
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

[debug] QUERY OK db=7.1ms decode=1.2ms queue=0.9ms
SELECT * FROM locations []
{:ok,
 %Postgrex.Result{
   columns: ["id", "latitude", "longitude", "locationName", "inserted_at",
    "updated_at"],
   command: :select,
   connection_id: 83464,
   messages: [],
   num_rows: 2,
   rows: [
     [1, 35.609226, 139.730186, "品川図書館",
      ~N[2019-02-16 21:06:31.000000], ~N[2019-02-16 21:06:31.000000]],
     [2, 35.588476, 139.737501, "しながわ水族館",
      ~N[2019-02-16 21:07:36.000000], ~N[2019-02-16 21:07:36.000000]]
   ]
 }}
iex 4>
BREAK: (a)bort (c)ontinue (p)roc info (i)nfo (l)oaded
       (v)ersion (k)ill (D)b-tables (d)istribution
a

fujikawigonoMBP:aedmap e_fujikawa$ mix recompile
Compiling 1 file (.ex)
Generated aedmap app
** (Mix) The task "recompile" could not be found. Did you mean "compile"?
fujikawigonoMBP:aedmap e_fujikawa$ recompile
-bash: recompile: command not found
fujikawigonoMBP:aedmap e_fujikawa$ iex -S mix phx.server
Erlang/OTP 21 [erts-10.1] [source] [64-bit] [smp:8:8] [ds:8:8:10] [async-threads:1] [hipe]

[info] Running AedmapWeb.Endpoint with cowboy 2.6.1 at http://localhost:4000
Interactive Elixir (1.8.1) - press Ctrl+C to exit (type h() ENTER for help)
iex 1> recmo
Webpack is watching the files…

Hash: 9410b407d6e5112db4e4
Version: webpack 4.4.0
Time: 548ms
Built at: 2019-2-17 06:12:32
                Asset       Size       Chunks             Chunk Names
       ../css/app.css   10.6 KiB  ./js/app.js  [emitted]  ./js/app.js
               app.js   7.23 KiB  ./js/app.js  [emitted]  ./js/app.js
       ../favicon.ico   1.23 KiB               [emitted]
        ../robots.txt  202 bytes               [emitted]
../images/phoenix.png   13.6 KiB               [emitted]
[../deps/phoenix_html/priv/static/phoenix_html.js] 2.17 KiB {./js/app.js} [built]
[./css/app.css] 39 bytes {./js/app.js} [built]
[./js/app.js] 493 bytes {./js/app.js} [built]
   [0] multi ./js/app.js 28 bytes {./js/app.js} [built]
    + 2 hidden modules
Child mini-css-extract-plugin node_modules/css-loader/index.js!css/app.css:
    [./node_modules/css-loader/index.js!./css/app.css] ./node_modules/css-loader!./css/app.css 288 bytes {mini-css-extract-plugin} [built]
    [./node_modules/css-loader/index.js!./css/phoenix.css] ./node_modules/css-loader!./css/phoenix.css 10.9 KiB {mini-css-extract-plugin} [built]
        + 1 hidden module

** (CompileError) iex:1: undefined function re/0

iex 1>
nil
iex 2> recompile
:noop
iex 3> [info] Replied phoenix:live_reload :ok
data = Db.query("SELECT * FROM locations")
BREAK: (a)bort (c)ontinue (p)roc info (i)nfo (l)oaded
       (v)ersion (k)ill (D)b-tables (d)istribution
a
fujikawigonoMBP:aedmap e_fujikawa$ iex -S mix phx.server
Erlang/OTP 21 [erts-10.1] [source] [64-bit] [smp:8:8] [ds:8:8:10] [async-threads:1] [hipe]

[info] Running AedmapWeb.Endpoint with cowboy 2.6.1 at http://localhost:4000
Interactive Elixir (1.8.1) - press Ctrl+C to exit (type h() ENTER for help)
iex 1> data = Db.query("SELECT * FROM locations")
Webpack is watching the files…


[debug] QUERY OK db=6.8ms decode=2.1ms queue=1.0ms
SELECT * FROM locations []
%Postgrex.Result{
  columns: ["id", "latitude", "longitude", "locationName", "inserted_at",
   "updated_at"],
  command: :select,
  connection_id: 84304,
  messages: [],
  num_rows: 2,
  rows: [
    [1, 35.609226, 139.730186, "品川図書館",
     ~N[2019-02-16 21:06:31.000000], ~N[2019-02-16 21:06:31.000000]],
    [2, 35.588476, 139.737501, "しながわ水族館",
     ~N[2019-02-16 21:07:36.000000], ~N[2019-02-16 21:07:36.000000]]
  ]
}
iex 2> Hash: 9410b407d6e5112db4e4
Version: webpack 4.4.0
Time: 569ms
Built at: 2019-2-17 06:12:53
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
[info] Replied phoenix:live_reload :ok
[info] Replied phoenix:live_reload :ok
fujikawigonoMBP:aedmap e_fujikawa$ iex -S mix phx.server
Erlang/OTP 21 [erts-10.1] [source] [64-bit] [smp:8:8] [ds:8:8:10] [async-threads:1] [hipe]

[info] Running AedmapWeb.Endpoint with cowboy 2.6.1 at http://localhost:4000
Interactive Elixir (1.8.1) - press Ctrl+C to exit (type h() ENTER for help)
iex 1>
Webpack is watching the files…

Hash: 9410b407d6e5112db4e4
Version: webpack 4.4.0
Time: 563ms
Built at: 2019-2-17 06:13:39
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

nil
iex 2>
nil
iex 3>
nil
iex 4> data = Db.query("SELECT * FROM locations")
[debug] QUERY OK db=7.4ms decode=1.3ms queue=1.0ms
SELECT * FROM locations []
%Postgrex.Result{
  columns: ["id", "latitude", "longitude", "locationName", "inserted_at",
   "updated_at"],
  command: :select,
  connection_id: 84542,
  messages: [],
  num_rows: 2,
  rows: [
    [1, 35.609226, 139.730186, "品川図書館",
     ~N[2019-02-16 21:06:31.000000], ~N[2019-02-16 21:06:31.000000]],
    [2, 35.588476, 139.737501, "しながわ水族館",
     ~N[2019-02-16 21:07:36.000000], ~N[2019-02-16 21:07:36.000000]]
  ]
}
iex 5> data.columns[info] Replied phoenix:live_reload :ok
[info] Replied phoenix:live_reload :ok

["id", "latitude", "longitude", "locationName", "inserted_at", "updated_at"]
iex 6> data.rows
[
  [1, 35.609226, 139.730186, "品川図書館", ~N[2019-02-16 21:06:31.000000],
   ~N[2019-02-16 21:06:31.000000]],
  [2, 35.588476, 139.737501, "しながわ水族館",
   ~N[2019-02-16 21:07:36.000000], ~N[2019-02-16 21:07:36.000000]]
]
iex 7>  [head | tail ] = data.rows
[
  [1, 35.609226, 139.730186, "品川図書館", ~N[2019-02-16 21:06:31.000000],
   ~N[2019-02-16 21:06:31.000000]],
  [2, 35.588476, 139.737501, "しながわ水族館",
   ~N[2019-02-16 21:07:36.000000], ~N[2019-02-16 21:07:36.000000]]
]
iex 8> List.zip([data.columns, head])
[
  {"id", 1},
  {"latitude", 35.609226},
  {"longitude", 139.730186},
  {"locationName", "品川図書館"},
  {"inserted_at", ~N[2019-02-16 21:06:31.000000]},
  {"updated_at", ~N[2019-02-16 21:06:31.000000]}
]
iex 9>
BREAK: (a)bort (c)ontinue (p)roc info (i)nfo (l)oaded
       (v)ersion (k)ill (D)b-tables (d)istribution
a
fujikawigonoMBP:aedmap e_fujikawa$ iex -S mix phx.server
Erlang/OTP 21 [erts-10.1] [source] [64-bit] [smp:8:8] [ds:8:8:10] [async-threads:1] [hipe]

[info] Running AedmapWeb.Endpoint with cowboy 2.6.1 at http://localhost:4000
Interactive Elixir (1.8.1) - press Ctrl+C to exit (type h() ENTER for help)
iex 1>
Webpack is watching the files…

Hash: 9410b407d6e5112db4e4
Version: webpack 4.4.0
Time: 550ms
Built at: 2019-2-17 06:16:54
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

nil
iex 2>
nil
iex 3> Enum.into(List.zip([data.columns, head]), %{})
** (CompileError) iex:3: undefined function data/0
    (stdlib) lists.erl:1354: :lists.mapfoldl/3
iex 3> Enum.into(List.zip([data.columns, head]), %{})[info] Replied phoenix:live_reload :ok
iex 3> data = Db.query("SELECT * FROM locations")
[debug] QUERY OK db=6.5ms decode=1.1ms queue=1.0ms
SELECT * FROM locations []
%Postgrex.Result{
  columns: ["id", "latitude", "longitude", "locationName", "inserted_at",
   "updated_at"],
  command: :select,
  connection_id: 85417,
  messages: [],
  num_rows: 2,
  rows: [
    [1, 35.609226, 139.730186, "品川図書館",
     ~N[2019-02-16 21:06:31.000000], ~N[2019-02-16 21:06:31.000000]],
    [2, 35.588476, 139.737501, "しながわ水族館",
     ~N[2019-02-16 21:07:36.000000], ~N[2019-02-16 21:07:36.000000]]
  ]
}
iex 4> Enum.into(List.zip([data.columns, head]), %{})
** (CompileError) iex:4: undefined function head/0
    (stdlib) lists.erl:1354: :lists.mapfoldl/3
iex 4> Enum.into(List.zip([data.columns, head]), %{})[info] Replied phoenix:live_reload :ok
iex 4> [head | tail ] = data.rows
[
  [1, 35.609226, 139.730186, "品川図書館", ~N[2019-02-16 21:06:31.000000],
   ~N[2019-02-16 21:06:31.000000]],
  [2, 35.588476, 139.737501, "しながわ水族館",
   ~N[2019-02-16 21:07:36.000000], ~N[2019-02-16 21:07:36.000000]]
]
iex 5> List.zip([data.columns, head])
[
  {"id", 1},
  {"latitude", 35.609226},
  {"longitude", 139.730186},
  {"locationName", "品川図書館"},
  {"inserted_at", ~N[2019-02-16 21:06:31.000000]},
  {"updated_at", ~N[2019-02-16 21:06:31.000000]}
]
iex 6> Enum.into(List.zip([data.columns, head]), %{})
%{
  "id" => 1,
  "inserted_at" => ~N[2019-02-16 21:06:31.000000],
  "latitude" => 35.609226,
  "locationName" => "品川図書館",
  "longitude" => 139.730186,
  "updated_at" => ~N[2019-02-16 21:06:31.000000]
}
iex 7> Enum.map(data.rows, fn row -> Enum.into(List.zip([data.columns, row]), %{}) end )
[
  %{
    "id" => 1,
    "inserted_at" => ~N[2019-02-16 21:06:31.000000],
    "latitude" => 35.609226,
    "locationName" => "品川図書館",
    "longitude" => 139.730186,
    "updated_at" => ~N[2019-02-16 21:06:31.000000]
  },
  %{
    "id" => 2,
    "inserted_at" => ~N[2019-02-16 21:07:36.000000],
    "latitude" => 35.588476,
    "locationName" => "しながわ水族館",
    "longitude" => 139.737501,
    "updated_at" => ~N[2019-02-16 21:07:36.000000]
  }
]
iex 8>
BREAK: (a)bort (c)ontinue (p)roc info (i)nfo (l)oaded
       (v)ersion (k)ill (D)b-tables (d)istribution
fujikawigonoMBP:aedmap e_fujikawa$ nano lib/util/db.ex
fujikawigonoMBP:aedmap e_fujikawa$ iex -S mix phx.server
Erlang/OTP 21 [erts-10.1] [source] [64-bit] [smp:8:8] [ds:8:8:10] [async-threads:1] [hipe]

Compiling 1 file (.ex)
[info] Running AedmapWeb.Endpoint with cowboy 2.6.1 at http://localhost:4000
Interactive Elixir (1.8.1) - press Ctrl+C to exit (type h() ENTER for help)
iex 1>
Webpack is watching the files…

Hash: 9410b407d6e5112db4e4
Version: webpack 4.4.0
Time: 537ms
Built at: 2019-2-17 06:20:45
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

nil
iex 2>
nil
iex 3> data = Db.query("SELECT * FROM locations")
[debug] QUERY OK db=7.5ms decode=1.3ms queue=1.0ms
SELECT * FROM locations []
%Postgrex.Result{
  columns: ["id", "latitude", "longitude", "locationName", "inserted_at",
   "updated_at"],
  command: :select,
  connection_id: 86063,
  messages: [],
  num_rows: 2,
  rows: [
    [1, 35.609226, 139.730186, "品川図書館",
     ~N[2019-02-16 21:06:31.000000], ~N[2019-02-16 21:06:31.000000]],
    [2, 35.588476, 139.737501, "しながわ水族館",
     ~N[2019-02-16 21:07:36.000000], ~N[2019-02-16 21:07:36.000000]]
  ]
}
iex 4> [info] Replied phoenix:live_reload :ok
[info] Replied phoenix:live_reload :ok

nil
iex 5> results = Db.to_map(data)
[
  %{
    "id" => 1,
    "inserted_at" => ~N[2019-02-16 21:06:31.000000],
    "latitude" => 35.609226,
    "locationName" => "品川図書館",
    "longitude" => 139.730186,
    "updated_at" => ~N[2019-02-16 21:06:31.000000]
  },
  %{
    "id" => 2,
    "inserted_at" => ~N[2019-02-16 21:07:36.000000],
    "latitude" => 35.588476,
    "locationName" => "しながわ水族館",
    "longitude" => 139.737501,
    "updated_at" => ~N[2019-02-16 21:07:36.000000]
  }
]
iex 6>
BREAK: (a)bort (c)ontinue (p)roc info (i)nfo (l)oaded
       (v)ersion (k)ill (D)b-tables (d)istribution
a
fujikawigonoMBP:aedmap e_fujikawa$ nano lib/aedmap_web/templates/location/index.html.eex
fujikawigonoMBP:aedmap e_fujikawa$ git add ./
gfujikawigonoMBP:aedmap e_fujikawa$ git satus
git: 'satus' is not a git command. See 'git --help'.

The most similar command is
	status
fujikawigonoMBP:aedmap e_fujikawa$ git status
On branch master
Changes to be committed:
  (use "git reset HEAD <file>..." to unstage)

	modified:   lib/aedmap_web/templates/location/index.html.eex

fujikawigonoMBP:aedmap e_fujikawa$ git commit -m "update location/index.html.eex for データの取得"
[master 75cc4c7] update location/index.html.eex for データの取得
 1 file changed, 8 insertions(+)
fujikawigonoMBP:aedmap e_fujikawa$ nano lib/aedmap_web/templates/location/index.html.eex
fujikawigonoMBP:aedmap e_fujikawa$ mix phx.server
Compiling 1 file (.ex)
warning: variable "tail" is unused (if the variable is not meant to be used, prefix it with an underscore)
  lib/aedmap_web/templates/location/index.html.eex:35

[info] Running AedmapWeb.Endpoint with cowboy 2.6.1 at http://localhost:4000

Webpack is watching the files…

Hash: 9410b407d6e5112db4e4
Version: webpack 4.4.0
Time: 535ms
Built at: 2019-2-17 06:32:57
                Asset       Size       Chunks             Chunk Names
       ../css/app.css   10.6 KiB  ./js/app.js  [emitted]  ./js/app.js
               app.js   7.23 KiB  ./js/app.js  [emitted]  ./js/app.js
       ../favicon.ico   1.23 KiB               [emitted]
        ../robots.txt  202 bytes               [emitted]
../images/phoenix.png   13.6 KiB               [emitted]
[../deps/phoenix_html/priv/static/phoenix_html.js] 2.17 KiB {./js/app.js} [built]
[./css/app.css] 39 bytes {./js/app.js} [built]
[./js/app.js] 493 bytes {./js/app.js} [built]
   [0] multi ./js/app.js 28 bytes {./js/app.js} [built]
    + 2 hidden modules
Child mini-css-extract-plugin node_modules/css-loader/index.js!css/app.css:
    [./node_modules/css-loader/index.js!./css/app.css] ./node_modules/css-loader!./css/app.css 288 bytes {mini-css-extract-plugin} [built]
    [./node_modules/css-loader/index.js!./css/phoenix.css] ./node_modules/css-loader!./css/phoenix.css 10.9 KiB {mini-css-extract-plugin} [built]
        + 1 hidden module
[info] Replied phoenix:live_reload :ok
[info] Replied phoenix:live_reload :ok
[info] GET /
[debug] Processing with AedmapWeb.PageController.index/2
  Parameters: %{}
  Pipelines: [:browser]
[info] Sent 200 in 2955ms
[info] Replied phoenix:live_reload :ok
[info] GET /locations
[debug] Processing with AedmapWeb.LocationController.index/2
  Parameters: %{}
  Pipelines: [:browser]
[debug] QUERY OK source="locations" db=7.9ms decode=2.0ms queue=1.1ms
SELECT l0."id", l0."latitude", l0."locationName", l0."longitude", l0."inserted_at", l0."updated_at" FROM "locations" AS l0 []
[debug] QUERY OK db=0.8ms queue=1.0ms
SELECT * FROM locations []
[info] Sent 200 in 60ms
[info] Replied phoenix:live_reload :ok
^C
BREAK: (a)bort (c)ontinue (p)roc info (i)nfo (l)oaded
       (v)ersion (k)ill (D)b-tables (d)istribution
a
fujikawigonoMBP:aedmap e_fujikawa$ cp ~/De
Desktop/                    DetectivePoirot,:category=  Detecve Poirot,
fujikawigonoMBP:aedmap e_fujikawa$ cp ~/Desktop/
$RECYCLE.BIN/                              Thumbs.db                                  desktop.ini                                スクリーンショット 2019-02-17 5.54.13.png  スクリーンショット 2019-02-17 6.24.21.png
.DS_Store                                  Windows 10 更新アシスタント.lnk            download-2018/                             スクリーンショット 2019-02-17 6.00.32.png  スクリーンショット 2019-02-17 6.32.12.png
.localized                                 account evidence/                          elixir-iex.mov                             スクリーンショット 2019-02-17 6.15.37.png  スクリーンショット 2019-02-17 6.33.28.png
Skype/                                     capture/                                   receipt/                                   スクリーンショット 2019-02-17 6.18.56.png
fujikawigonoMBP:aedmap e_fujikawa$ cp ~/Desktop/スクリーンショット\ 2019-02-17\ 6.3
スクリーンショット 2019-02-17 6.32.12.png  スクリーンショット 2019-02-17 6.33.28.png
fujikawigonoMBP:aedmap e_fujikawa$ cp ~/Desktop/スクリーンショット\ 2019-02-17\ 6.33.28.png docs/screenshot-15.png
fujikawigonoMBP:aedmap e_fujikawa$ git status
On branch master
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

	modified:   lib/aedmap_web/templates/location/index.html.eex

Untracked files:
  (use "git add <file>..." to include in what will be committed)

	docs/screenshot-15.png

no changes added to commit (use "git add" and/or "git commit -a")
fujikawigonoMBP:aedmap e_fujikawa$ open docs/screenshot-15.png
fujikawigonoMBP:aedmap e_fujikawa$ git status
On branch master
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

	modified:   lib/aedmap_web/templates/location/index.html.eex

Untracked files:
  (use "git add <file>..." to include in what will be committed)

	docs/screenshot-15.png

no changes added to commit (use "git add" and/or "git commit -a")
fujikawigonoMBP:aedmap e_fujikawa$ git add ./
gfujikawigonoMBP:aedmap e_fujikawa$ git commit -m "edit location/index.html.eex for 地図の追加"
[master b184682] edit location/index.html.eex for 地図の追加
 2 files changed, 11 insertions(+)
 create mode 100644 docs/screenshot-15.png
gfujikawigonoMBP:aedmap e_fujikawa$ git push origin master
Enumerating objects: 16, done.
Counting objects: 100% (16/16), done.
Delta compression using up to 8 threads
Compressing objects: 100% (9/9), done.
Writing objects: 100% (9/9), 2.84 MiB | 741.00 KiB/s, done.
Total 9 (delta 6), reused 0 (delta 0)
remote: Resolving deltas: 100% (6/6), completed with 6 local objects.
To github.com:Eigo-Mt-Fuji/aedmap.git
   8e76ecf..b184682  master -> master
fujikawigonoMBP:aedmap e_fujikawa$ nano lib/aedmap_web/templates/layout/app.html.eex
fujikawigonoMBP:aedmap e_fujikawa$ git status
On branch master
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

	modified:   lib/aedmap_web/templates/layout/app.html.eex

no changes added to commit (use "git add" and/or "git commit -a")
gfujikawigonoMBP:aedmap e_fujikawa$ git add ./
fujikawigonoMBP:aedmap e_fujikawa$ git status
On branch master
Changes to be committed:
  (use "git reset HEAD <file>..." to unstage)

	modified:   lib/aedmap_web/templates/layout/app.html.eex

gfujikawigonoMBP:aedmap e_fujikawa$ mix phx.server
Compiling 1 file (.ex)
[info] Running AedmapWeb.Endpoint with cowboy 2.6.1 at http://localhost:4000

Webpack is watching the files…

Hash: 9410b407d6e5112db4e4
Version: webpack 4.4.0
Time: 611ms
Built at: 2019-2-17 06:40:29
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
[info] Replied phoenix:live_reload :ok
[info] GET /locations
[debug] Processing with AedmapWeb.LocationController.index/2
  Parameters: %{}
  Pipelines: [:browser]
[debug] QUERY OK source="locations" db=7.8ms decode=1.8ms queue=1.2ms
SELECT l0."id", l0."latitude", l0."locationName", l0."longitude", l0."inserted_at", l0."updated_at" FROM "locations" AS l0 []
[debug] QUERY OK db=0.8ms queue=0.9ms
SELECT * FROM locations []
[info] Sent 200 in 70ms
[info] Replied phoenix:live_reload :ok
[info] Replied phoenix:live_reload :ok
^C
BREAK: (a)bort (c)ontinue (p)roc info (i)nfo (l)oaded
       (v)ersion (k)ill (D)b-tables (d)istribution
a
fujikawigonoMBP:aedmap e_fujikawa$ nano lib/aedmap_web/templates/page/index.html.eex
fujikawigonoMBP:aedmap e_fujikawa$ mix phx.server
Compiling 1 file (.ex)
[info] Running AedmapWeb.Endpoint with cowboy 2.6.1 at http://localhost:4000

Webpack is watching the files…

Hash: 9410b407d6e5112db4e4
Version: webpack 4.4.0
Time: 548ms
Built at: 2019-2-17 06:43:21
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
[info] Replied phoenix:live_reload :ok
[info] GET /
[debug] Processing with AedmapWeb.PageController.index/2
  Parameters: %{}
  Pipelines: [:browser]
[info] Replied phoenix:live_reload :ok
[info] Sent 200 in 4858ms
[info] Replied phoenix:live_reload :ok
^C
BREAK: (a)bort (c)ontinue (p)roc info (i)nfo (l)oaded
       (v)ersion (k)ill (D)b-tables (d)istribution
a
``` 
