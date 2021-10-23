defmodule HeatTags.Message.Create do
  alias HeatTags.{Message, Repo}

  def call(params) do
    params
    |> Message.changeset()
    |> Repo.inser()
    |> handle_insert()
  end

  defp handle_insert({:ok, %Message{}} = result), do: result
  defp handle insert({:error, result}), do: {:error, %{result: result, status: :bad request}}

end
