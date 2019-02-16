defmodule Db do
  def query( sql ) do
    case Ecto.Adapters.SQL.query( Aedmap.Repo  , sql, [] ) do
    { :ok, result } -> result
    { :error, _reason } -> "DB SQL error"
    end
  end
  def to_map(result) do
    Enum.map(result.rows, fn row -> list_to_tuple(result.columns, row) end )
  end
  defp list_to_tuple(column, row) do
    List.zip([ column, row ]) |> Enum.into(%{})
  end
end
