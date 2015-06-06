
Cycle.destroy_all
Butterfly.destroy_all
Stage.destroy_all
Role.destroy_all
Behavior.destroy_all
Attitude.destroy_all
User.destroy_all


stages = [
  {
    name: "Honeymoon Stage",
    description: "This is a loving, non-violent time, often where the abuser tries to compensate for previous mistreatment of the other"
  },
  {
    name: "Tension-Building Stage",
    description: "The demands on and stresses of the relationship increase"
  },
  {
    name: "Explosive Stage",
    description: "Seeking a release from the build-up of stress and tension, the abuser makes a choice about how to strike out and does it"
  },

]

stages.each do |stage_hash|
  Stage.create!(stage_hash)
end


roles = [
  {
    name: "Abuser",
    description: "Generally, one who tries to compensate for feeling like he or she is powerless by asserting unhealthy control over someone close"
  },
  {
    name: "Victim",
    description: "One who is trapped physically, financially, or emotionally by someone close and often suffers in mind, body, or spirit"
  },
]

roles.each do |roles_hash|
  Role.create!(roles_hash)
end

behaviors = [
  {
    role:        Role.find_by(name: "Abuser"),
    stage:       Stage.find_by(name: "Honeymoon Stage"),
    description: "Promises to change and not repeat the abuse"
  },
  {
    role:        Role.find_by(name: "Abuser"),
    stage:       Stage.find_by(name: "Honeymoon Stage"),
    description: "Offers gifts and pays special attention to the other person"
  },

  {
    role:        Role.find_by(name: "Abuser"),
    stage:       Stage.find_by(name: "Honeymoon Stage"),
    description: "Begs for forgiveness"
  },

  {
    role:        Role.find_by(name: "Victim"),
    stage:       Stage.find_by(name: "Honeymoon Stage"),
    description: "Warily accepts apologies and offers forgiveness"
  },

  {
    role:        Role.find_by(name: "Victim"),
    stage:       Stage.find_by(name: "Honeymoon Stage"),
    description: "Does activities that are enjoyable with the other person"
  },

  {
    role:        Role.find_by(name: "Abuser"),
    stage:       Stage.find_by(name: "Tension-Building Stage"),
    description: "Increases aggressive behavior towards objects"
  },

  {
    role:        Role.find_by(name: "Abuser"),
    stage:       Stage.find_by(name: "Tension-Building Stage"),
    description: "Increases verbal abuse towards the victim"
  },

  {
    role:        Role.find_by(name: "Victim"),
    stage:       Stage.find_by(name: "Tension-Building Stage"),
    description: "Alters behavior to avoid triggering aggression"
  },

  {
    role:        Role.find_by(name: "Abuser"),
    stage:       Stage.find_by(name: "Explosive Stage"),
    description: "May use alcohol in excess and use that as an excuse for violence"
  },

  {
    role:        Role.find_by(name: "Abuser"),
    stage:       Stage.find_by(name:"Explosive Stage"),
    description: "May stimulate confrontation to get the 'event' over with"
  },
]

behaviors.each do |behaviors_hash|
  Behavior.create!(behaviors_hash)
end
