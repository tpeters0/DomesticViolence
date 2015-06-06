
Cycle.destroy_all
Butterfly.destroy_all
Stage.destroy_all
Role.destroy_all
Behavior.destroy_all
Attitude.destroy_all
User.destroy_all


stages = [
  {
    stage_name: "Honeymoon Stage",
    description: "This is a loving, non-violent time, where the abuser may take  responsibility for the violent behavior, begs for forgiveness, promises to change for the better, or gives gifts to the victim"
  },
  {
    stage_name: "Tension-Building Stage",
    description: "The demands on and stresses of the relationship increase"
  },
  {
    stage_name: "Explosive Stage",
    description: "Seeking a release from the build-up of stress and tension, the abuser makes a choice about how to strike out and does it."
  },

]

stages.each do |stage_hash|
  Stage.create!(stage_hash)
end


roles = [
  {
    role_name: "Abuser",
    description: "Generally, one who tries to compensate for feeling like he or she is powerless by asserting unhealthy control over someone close"
  },
  {
    role_name: "Victim",
    description: "One who is trapped physically, financially, or emotionally by someone close and often suffers in mind, body, or spirit."
  },
]

roles.each do |roles_hash|
  Role.create!(roles_hash)
end

behaviors = [
  {
    role_id:     "Abuser",
    stage_id:    "Honeymoon",
    description: "Promises to change and not repeat the abuse"
  },
  {
    role_id:     "Abuser",
    stage_id:    "Honeymoon",
    description: "Offers gifts and pays special attention to the other person"
  },

  {
    role_id:     "Abuser",
    stage_id:    "Honeymoon",
    description: "Begs for forgiveness"
  },

  {
    role_id:     "Victim",
    stage_id:    "Honeymoon",
    description: "Warily accepts apologies and offers forgiveness"
  },

  {
    role_id:     "Victim",
    stage_id:    "Honeymoon",
    description: "Does activities that are enjoyable with the other person"
  },

  {
    role_id:     "Abuser",
    stage_id:    "Tension",
    description: "Increases aggressive behavior towards objects"
  },

  {
    role_id:     "Abuser",
    stage_id:    "Tension",
    description: "Increases verbal abuse towards the victim"
  },

  {
    role_id:     "Victim",
    stage_id:    "Tension",
    description: "Alters behavior to avoid triggering aggression"
  },

  {
    role_id:     "Abuser",
    stage_id:    "Explosive",
    description: "May use alcohol in excess and use that as an excuse for violence"
  },

  {
    role_id:     "Abuser",
    stage_id:    "Explosive",
    description: "May stimulate confrontation to get it over with"
  },
]
