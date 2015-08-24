class Player <ActiveRecord:: Base
  scope(:active_roster, -> do
    where({:active => true})
  end)

  scope(:inactive_roster, -> do
    where({:active => false})
  end)
  belongs_to(:team)
end
