defmodule Db do
  def query( sql ) do
    case Ecto.Adapters.SQL.query( Aedmap.Repo  , sql, [] ) do
    { :ok, result } -> result
    { :error, _reason } -> "DB SQL error"
    end
  end
end
