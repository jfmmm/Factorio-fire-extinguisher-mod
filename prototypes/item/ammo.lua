data:extend({
  {
    type = "ammo",
    name = "extinguisher-ammo",
    icon = "__extinguisher__/graphics/icons/extinguisher-canister.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "extinguisher",
      target_type = "position",
      clamp_position = true,
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "stream",
          stream = "handheld-extinguisher-stream",
          max_length = 15,
          duration = 160,
        }
      }
    },
    magazine_size = 100,
    subgroup = "ammo",
    order = "e[extinguisher]",
    stack_size = 50
  }
})
