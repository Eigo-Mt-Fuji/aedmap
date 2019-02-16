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

``` 
