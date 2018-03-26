defmodule GherkinTests.Contexts.EditUser do
  use WhiteBread.Context

  alias PhoenixCore.User

	given_ ~r/^I register a new user called "(?<name>[^"]+)"$/,
	  fn state, %{name: name} ->

		user_details = %{name: name}
		changeset = User.changeset(%User{}, user_details)
		{:ok, assert changeset.valid? }
	end

	and_ ~r/^I change their "(?<argument_one>[^"]+)" to "(?<argument_two>[^"]+)"$/,
	fn state, %{argument_one: _argument_one,argument_two: _argument_two} ->
	  {:ok, state}
	end

	then_ ~r/^their "(?<argument_one>[^"]+)" should be "(?<argument_two>[^"]+)"$/,
	fn state, %{argument_one: _argument_one,argument_two: _argument_two} ->
	  {:ok, state}
	end

end