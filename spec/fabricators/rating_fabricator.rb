Fabricator(:rating) do
  user             { Fabricate(:user) }
  value            1
  matching_session { Fabricate(:matching_session) }
  activity         { Fabricate(:activity) } 
end
