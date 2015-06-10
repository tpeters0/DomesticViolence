
Butterfly.destroy_all
Stage.destroy_all
Role.destroy_all
Behavior.destroy_all
Attitude.destroy_all
User.destroy_all



stages = [
  {
    name:        "honeymoon",
    description: "This is a loving, non-violent time, often where the abuser tries to compensate for previous mistreatment of the other.  Unless there is intervention where the abuser seriously commits to counseling to discover underlying issues and learn to manage his stress, the dangerous tension will begin to build again."
  },
  {
    name:        "tension-building",
    description: "The demands on and stresses of the relationship increase.  This is the longest stage, which can last from days to years.  Like the explosive stage, it does not occur until after the people involved have become extremely close for some time.  Over time, the abuser becomes more stressed and more controlling of the victim."
  },
  {
    name:        "explosive",
    description: "Seeking a release from the build-up of stress and tension, the abuser instigates an incident, striking out against the victim -  verbally, emotionally, or physically. This is the shortest stage, but often increases in severity each time through the cycle."
  },

]

stages.each do |stage_hash|
  Stage.create!(stage_hash)
end


roles = [
  {
    name:        "Abuser",
    description: "Generally, one who tries to compensate for feeling like he or she is powerless by asserting unhealthy control over someone close"
  },
  {
    name:        "Victim",
    description: "One who is trapped physically, financially, or emotionally by someone close and often suffers in mind, body, or spirit"
  },
]

roles.each do |roles_hash|
  Role.create!(roles_hash)
end

behaviors = [
  {
    role:        Role.find_by(name: "Abuser"),
    stage:       Stage.find_by(name: "honeymoon"),
    description: "promises to change and not repeat the abuse"
  },
  {
    role:        Role.find_by(name: "Abuser"),
    stage:       Stage.find_by(name: "honeymoon"),
    description: "offers gifts and pays special attention to the other person"
  },

  {
    role:        Role.find_by(name: "Abuser"),
    stage:       Stage.find_by(name: "honeymoon"),
    description: "begs for forgiveness"
  },

  {
    role:        Role.find_by(name: "Victim"),
    stage:       Stage.find_by(name: "honeymoon"),
    description: "warily accepts apologies and offers forgiveness"
  },

  {
    role:        Role.find_by(name: "Victim"),
    stage:       Stage.find_by(name: "honeymoon"),
    description: "does activities that are enjoyable with the other person"
  },

  {
    role:        Role.find_by(name: "Victim"),
    stage:       Stage.find_by(name: "tension-building"),
    description: "alters behavior to avoid triggering the abuser's aggression"
  },

  {
    role:        Role.find_by(name: "Victim"),
    stage:       Stage.find_by(name: "tension-building"),
    description: "often submits to the increasing demands of the abuser"
  },

  {
    role:        Role.find_by(name: "Abuser"),
    stage:       Stage.find_by(name: "explosive"),
    description: "severely attacks the victim - physically, verbally, and/ or sexually"
  },

  {
    role:        Role.find_by(name: "Abuser"),
    stage:       Stage.find_by(name: "explosive"),
    description: "will continue attack until the pent-up stress is 'released.'"
  },

  {
    role:        Role.find_by(name: "Abuser"),
    stage:       Stage.find_by(name: "explosive"),
    description: "may use alcohol in excess and use that as an excuse for violence"
  },

  {
    role:        Role.find_by(name: "Abuser"),
    stage:       Stage.find_by(name: "explosive"),
    description: "behaves calmly immediately after the attack, once pent-up tension is gone - and often by the time authorities arrive"
  },

  {
    role:        Role.find_by(name: "Victim"),
    stage:       Stage.find_by(name:"explosive"),
    description: "may stimulate confrontation to get the 'event' over with"
  },

  {
    role:        Role.find_by(name: "Victim"),
    stage:       Stage.find_by(name:"explosive"),
    description: "often denies or minimizes the seriousness of the injuries to the abuser to soothe them or avoid further abuse"
  },

  {
    role:        Role.find_by(name: "Victim"),
    stage:       Stage.find_by(name:"explosive"),
    description: "must wait the incident out or try to escape.  Retaliating will simply increase the abuser's will to attack more aggressively."
  },

  {
    role:        Role.find_by(name: "Abuser"),
    stage:       Stage.find_by(name:"tension-building"),
    description: "denies his or her own insecurities or frustrations"
  },

  {
    role:        Role.find_by(name: "Abuser"),
    stage:       Stage.find_by(name:"tension-building"),
    description: "blames victim or other for making him or her miserable"
  },

  {
    role:        Role.find_by(name: "Abuser"),
    stage:       Stage.find_by(name:"tension-building"),
    description: "becomes increasingly aggressive towards objects and verbally abusive towards the victim"
  },

  {
    role:        Role.find_by(name: "Abuser"),
    stage:       Stage.find_by(name:"tension-building"),
    description: "becomes increasingly demanding of control over the victim's life, including dictating who he or she may spend time with or how he or she may dress"
  },

]


behaviors.each do |behaviors_hash|
  Behavior.create!(behaviors_hash)
end

attitudes = [
  {
    role:        Role.find_by(name: "Abuser"),
    stage:       Stage.find_by(name:"explosive"),
    description: "out of control"
  },

  {
    role:        Role.find_by(name: "Abuser"),
    stage:       Stage.find_by(name:"explosive"),
    description: "that the victim is to blame"
  },

  {
    role:        Role.find_by(name: "Abuser"),
    stage:       Stage.find_by(name:"explosive"),
    description: "angry"
  },

  {
    role:        Role.find_by(name: "Abuser"),
    stage:       Stage.find_by(name:"explosive"),
    description: "the desire to control or punish the victim"
  },

  # {
  #   role:        Role.find_by(name: "Abuser"),
  #   stage:       Stage.find_by(name:"explosive"),
  #   description: "calm, immediately after the event, because the pent-up stress has been eliminated.
  #                 Abusers often appear peaceful by the time law enforcement might arrive."
  # },

  {
    role:        Role.find_by(name: "Victim"),
    stage:       Stage.find_by(name:"explosive"),
    description: "terrified"
  },

  {
    role:        Role.find_by(name: "Victim"),
    stage:       Stage.find_by(name:"explosive"),
    description: "shocked"
  },

  {
    role:        Role.find_by(name: "Victim"),
    stage:       Stage.find_by(name:"explosive"),
    description: "ashamed"
  },

  {
    role:        Role.find_by(name: "Victim"),
    stage:       Stage.find_by(name:"explosive"),
    description: "the desire to get the pain over with"
  },

  {
    role:        Role.find_by(name: "Abuser"),
    stage:       Stage.find_by(name:"tension-building"),
    description: "powerless, in some sense - wanting to feel control over something or someone"
  },

  {
    role:        Role.find_by(name: "Abuser"),
    stage:       Stage.find_by(name:"tension-building"),
    description: "frustrated, disappointed, or insecure with things in life"
  },

  {
    role:        Role.find_by(name: "Victim"),
    stage:       Stage.find_by(name:"tension-building"),
    description: "like he or she must walk on eggshells, being very careful not to trigger an explosion"
  },

  {
    role:        Role.find_by(name: "Victim"),
    stage:       Stage.find_by(name:"tension-building"),
    description: "that nothing he or she does is good enough for the abuser"
  },

  {
    role:        Role.find_by(name: "Victim"),
    stage:       Stage.find_by(name:"tension-building"),
    description: "angry, because the abuser is not keeping the promises made during the honeymoon stage"
  },

  {
    role:        Role.find_by(name: "Victim"),
    stage:       Stage.find_by(name:"tension-building"),
    description: "powerless to stop the next beating or explosion"
  },

  {
    role:        Role.find_by(name: "Abuser"),
    stage:       Stage.find_by(name:"honeymoon"),
    description: "temporarily in control of self"
  },

  {
    role:        Role.find_by(name: "Abuser"),
    stage:       Stage.find_by(name:"honeymoon"),
    description: "fearful that the victim will leave"
  },

  {
    role:        Role.find_by(name: "Abuser"),
    stage:       Stage.find_by(name:"honeymoon"),
    description: "shame or guilt over his or her behavior"
  },

  {
    role:        Role.find_by(name: "Victim"),
    stage:       Stage.find_by(name:"honeymoon"),
    description: "guilty about thoughts of leaving the abuser"
  },

  {
    role:        Role.find_by(name: "Victim"),
    stage:       Stage.find_by(name:"honeymoon"),
    description: "the desire to escape the abuse, yet hopeful that things will be better"
  },

  {
    role:        Role.find_by(name: "Victim"),
    stage:       Stage.find_by(name:"honeymoon"),
    description: "depressed, possibly, and still feeling trapped"
  },


]


attitudes.each do |attitudes_hash|
  Attitude.create!(attitudes_hash)
end
