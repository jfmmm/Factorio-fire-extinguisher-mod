data:extend({
  {
    type = "technology",
    name = "extinguisher",
    icon = "__extinguisher__/graphics/technology/extinguisher.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "extinguisher"
      },
      {
        type = "unlock-recipe",
        recipe = "extinguisher-ammo"
      }
    },
    prerequisites = {"flammables", "military-2"},
    unit =
    {
      count = 20,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 15
    },
    order = "e-c-b"
  }
})
