defmodule Mongo.CryptoUtils do
  @moduledoc false
  
  if Code.ensure_loaded?(:crypto) and function_exported?(:crypto, :mac, 4) do
    def hmac(sub_type, key, data), do: :crypto.mac(:hmac, sub_type, key, data)
  else
    def hmac(sub_type, key, data), do: :crypto.hmac(sub_type, key, data)
  end
  
end
