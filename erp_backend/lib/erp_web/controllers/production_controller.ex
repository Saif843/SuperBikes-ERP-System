defmodule ErpWeb.ProductionController do
@moduledoc """
A module that acts as the controller for production of products.
"""
  use ErpWeb, :controller


## Examples
      iex> get_production_info(conn, %{})
      {:ok, %{productionData: ...}}
      iex> get_production_info(conn, %{})
      {:error, :error}
  """
  def get_production_info(conn, _params) do
    case Erp.Production.production_status() do
      {:ok, data} -> json(conn, %{productionData: data})
      {:error, _} -> {:error, :error}
    end
  end
end


  @doc """
  Show the production information for the plant.
  """
  def get_production_info(conn, _params) do
    case Erp.Production.production_status() do
      {:ok, data} -> json(conn, %{productionData: data})
      {:error, _} -> {:error, :error}
    end
  end
end
