defmodule Aedmap.ExJson do

  def get(base_url, resource_path) do
    
    case (base_url <> resource_path) |> HTTPoison.get! do
      %HTTPoison.Response{body: body, status_code: 200} ->  body |> Poison.decode!
      %HTTPoison.Error{reason: reason} -> raise "Oops, #{reason}"
    end
  end
end
