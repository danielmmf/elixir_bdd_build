defmodule WhiteBreadConfig do
  use WhiteBread.SuiteConfiguration

   suite name:          "Edit User",
        context:       GherkinTests.Contexts.EditUser,
        feature_paths: ["features/edit_user.feature"]    
end
