defmodule Erp.QualityManagement do
  @moduledoc """
  The QualityManagement context.
  """

 # Import Ecto.Query to use in queries (warning disabled)
  import Ecto.Query, warn: false
  
   # Alias the Erp.Repo module for convenience
  alias Erp.Repo

 # Alias the VendorClaim module
  alias Erp.QualityManagement.VendorClaim

  @doc """
  Returns the list of vendorclaim.

  ## Examples

      iex> list_vendorclaim()
      [%VendorClaim{}, ...]

  """
  def list_vendorclaim do
    Repo.all(VendorClaim)
  end

  @doc """
  Gets a single vendor_claim.

  Raises `Ecto.NoResultsError` if the Vendor claim does not exist.

  ## Examples

      iex> get_vendor_claim!(123)
      %VendorClaim{}

      iex> get_vendor_claim!(456)
      ** (Ecto.NoResultsError)

  """
  def get_vendor_claim!(id), do: Repo.get!(VendorClaim, id)

  @doc """
  Creates a vendor_claim.

  ## Examples

      iex> create_vendor_claim(%{field: value})
      {:ok, %VendorClaim{}}

      iex> create_vendor_claim(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_vendor_claim(attrs \\ %{}) do
    %VendorClaim{}
    |> VendorClaim.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a vendor_claim.

  ## Examples

      iex> update_vendor_claim(vendor_claim, %{field: new_value})
      {:ok, %VendorClaim{}}

      iex> update_vendor_claim(vendor_claim, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
   ## Examples
      iex> list_vendor_claim()
      [%VendorClaim{}, ...]
  """
  def list_vendor_claim do
    Repo.all(VendorClaim)
  end

  # ...
  
  def update_vendor_claim(%VendorClaim{} = vendor_claim, attrs) do
    vendor_claim
    |> VendorClaim.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a vendor_claim.

  ## Examples

      iex> delete_vendor_claim(vendor_claim)
      {:ok, %VendorClaim{}}

      iex> delete_vendor_claim(vendor_claim)
      {:error, %Ecto.Changeset{}}

  """
  def delete_vendor_claim(%VendorClaim{} = vendor_claim) do
    Repo.delete(vendor_claim)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking vendor_claim changes.

  ## Examples

      iex> change_vendor_claim(vendor_claim)
      %Ecto.Changeset{data: %VendorClaim{}}

  """
  def change_vendor_claim(%VendorClaim{} = vendor_claim, attrs \\ %{}) do
    VendorClaim.changeset(vendor_claim, attrs)
  end

  alias Erp.QualityManagement.ClientClaim

  @doc """
  Returns the list of clientclaim.

  ## Examples

      iex> list_clientclaim()
      [%ClientClaim{}, ...]

  """
  def list_clientclaim do
    Repo.all(ClientClaim)
  end

  @doc """
  Returns the list of clientclaim based of user email.

  ## Examples

      iex> list_clientclaim()
      [%ClientClaim{}, ...]

  """
  def list_clientclaim_from_email(email) do
    query = from client in ClientClaim,
          where: client.name == ^email
    Repo.all(query)
  end

  @doc """
  Gets a single client_claim.

  Raises `Ecto.NoResultsError` if the Client claim does not exist.

  ## Examples

      iex> get_client_claim!(123)
      %ClientClaim{}

      iex> get_client_claim!(456)
      ** (Ecto.NoResultsError)

  """
  def get_client_claim!(id), do: Repo.get!(ClientClaim, id)

  @doc """
  Creates a client_claim.

  ## Examples

      iex> create_client_claim(%{field: value})
      {:ok, %ClientClaim{}}

      iex> create_client_claim(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_client_claim(attrs \\ %{}) do
    %ClientClaim{}
    |> ClientClaim.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a client_claim.

  ## Examples

      iex> update_client_claim(client_claim, %{field: new_value})
      {:ok, %ClientClaim{}}

      iex> update_client_claim(client_claim, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_client_claim(%ClientClaim{} = client_claim, attrs) do
    client_claim
    |> ClientClaim.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a client_claim.

  ## Examples

      iex> delete_client_claim(client_claim)
      {:ok, %ClientClaim{}}

      iex> delete_client_claim(client_claim)
      {:error, %Ecto.Changeset{}}

  """
  def delete_client_claim(%ClientClaim{} = client_claim) do
    Repo.delete(client_claim)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking client_claim changes.

  ## Examples

      iex> change_client_claim(client_claim)
      %Ecto.Changeset{data: %ClientClaim{}}

  """
  def change_client_claim(%ClientClaim{} = client_claim, attrs \\ %{}) do
    ClientClaim.changeset(client_claim, attrs)
  end
  
   ## Examples
      iex> list_client_claim_from_email("example@example.com")
      [%ClientClaim{}, ...]
  """
  def list_client_claim_from_email(email) do
    query = from client in ClientClaim,
          where: client.name == ^email
    Repo.all(query)
  end

   ## Examples
      iex> list_client_claim_from_email("example@example.com")
      [%ClientClaim{}, ...]
  """
  def list_client_claim_from_email(email) do
    query = from client in ClientClaim,
          where: client.name == ^email
    Repo.all(query)
  end

  # ...
end
