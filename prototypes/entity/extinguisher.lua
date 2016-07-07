require "util"

local fire_damage_per_tick = 0 --45 / 60

data:extend({
  {
    type = "corpse",
    name = "extinguisher-remnants",
    icon = "__base__/graphics/icons/remnants.png",
    flags = {"placeable-neutral", "not-on-map"},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    tile_width = 1,
    tile_height = 1,
    selectable_in_game = false,
    subgroup = "remnants",
    order="d[remnants]-a[generic]-a[small]",
    time_before_removed = 60 * 15, -- 15 minutes
    final_render_layer = "remnants",
    animation =
    {
      {
        width = 75,
        height = 75,
        frame_count = 1,
        direction_count = 1,
        filename = "__extinguisher__/graphics/entity/extinguisher-stream/extinguisher-remnants-2.png"
      },
      {
        width = 75,
        height = 75,
        frame_count = 1,
        direction_count = 1,
        y = 75,
        filename = "__extinguisher__/graphics/entity/extinguisher-stream/extinguisher-remnants-2.png"
      },
      {
        width = 75,
        height = 75,
        frame_count = 1,
        direction_count = 1,
        y = 150,
        filename = "__extinguisher__/graphics/entity/extinguisher-stream/extinguisher-remnants-2.png"
      }
    }
  },
})

data:extend({
  {
    type = "stream",
    name = "handheld-extinguisher-stream",
    flags = {"not-on-map"},
    working_sound_disabled =
    {
      {
        filename = "__base__/sound/fight/electric-beam.ogg",
        volume = 0.7
      }
    },

    particle_buffer_size = 65,
    particle_spawn_interval = 1,
    particle_spawn_timeout = 1,
    particle_vertical_acceleration = 0.005 * 0.6,
    particle_horizontal_speed = 0.25,
    particle_horizontal_speed_deviation = 0.0035,
    particle_start_alpha = 0.5,
    particle_end_alpha = 1,
    particle_start_scale = 0.2,
    particle_loop_frame_count = 3,
    particle_fade_out_threshold = 0.9,
    particle_loop_exit_threshold = 0.25,
    action =
    {
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "extinguisher-remnants",
              trigger_created_entity = true
            }
          }
        }
      }
    },

    spine_animation =
    {
      filename = "__extinguisher__/graphics/entity/extinguisher-stream/extinguisher-stream-spine.png",
      blend_mode = "additive",
      --tint = {r=1, g=1, b=1, a=0.5},
      line_length = 4,
      width = 32,
      height = 18,
      frame_count = 32,
      axially_symmetrical = false,
      direction_count = 1,
      animation_speed = 2,
      scale = 0.75,
      shift = {0, 0},
    },

    particle =
    {
      filename = "__extinguisher__/graphics/entity/extinguisher-stream/extinguisher-fumes.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      frame_count = 32,
      line_length = 8,
      scale = 1,
    },
  }
})
