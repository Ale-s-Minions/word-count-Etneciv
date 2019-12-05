defmodule WordCount do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t()) :: map
  def count(sentence) do
    words = String.replace(sentence, ~r/[,.:"@£$%^&*!]/,]"")
      |> String.split(~r/[ _]+/,trim:true)
    
    Enum.reduce palabra, %{}, fn word, count ->
      word = String.downcase word
      Map.update count, palabra, 1, & (&+1)
  end
end
