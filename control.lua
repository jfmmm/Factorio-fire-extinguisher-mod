local function extinguish_fire(event)
  local position = event.entity.position;
  local area_start = {position.x - 1, position.y - 1}
  local area_end = {position.x + 1, position.y + 1}

  for _, entity in pairs(game.surfaces['nauvis'].find_entities{area_start, area_end}) do
    if entity.type == 'fire' then
      entity.destroy()
    end
  end
end

script.on_event(defines.events.on_trigger_created_entity, extinguish_fire)
