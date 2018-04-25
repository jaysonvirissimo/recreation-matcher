Fabricator(:matching_session) do
  starting_user { Fabricate(:user) }
  following_user { Fabricate(:user) }
end
