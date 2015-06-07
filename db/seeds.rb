
Cycle.destroy_all
Butterfly.destroy_all
Stage.destroy_all
Role.destroy_all
Behavior.destroy_all
Attitude.destroy_all
User.destroy_all



Cycle.create!(name: "Cycle of Abuse")

stages = [
  {
    cycle:        Cycle.find_by(name: "Cycle of Abuse"),
    name:        "Honeymoon Stage",
    description: "This is a loving, non-violent time, often where the abuser tries to compensate for previous mistreatment of the other.  Unless there is intervention where the abuser seriously commits to counseling to discover underlying issues and learn to manage his stress, the dangerous tension will begin to build again."
  },
  {
    cycle:        Cycle.find_by(name: "Cycle of Abuse"),
    name:        "Tension-Building Stage",
    description: "The demands on and stresses of the relationship increase.  This is the longest stage, which can last from days to years.  Like the explosive stage, it does not occur until after the people involved have become extremely close for some time.  Over time, the abuser becomes more stressed and more controlling of the victim."
  },
  {
    cycle:        Cycle.find_by(name: "Cycle of Abuse"),
    name:        "Explosive Stage",
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
    role:        Role.find_by(name: "Victim"),
    stage:       Stage.find_by(name:"Explosive Stage"),
    description: "May stimulate confrontation to get the 'event' over with"
  },

  {
    role:        Role.find_by(name: "Victim"),
    stage:       Stage.find_by(name:"Explosive Stage"),
    description: "Often deny or minimize the seriousness of the injuries to the abuser to soothe them or avoid further abuse"
  },

  {
    role:        Role.find_by(name: "Victim"),
    stage:       Stage.find_by(name:"Explosive Stage"),
    description: "Must wait it out or try to escape.  Fighting back or retaliating will simply increase the abuser's will to attack more aggressively."
  },

  {
    role:        Role.find_by(name: "Abuser"),
    stage:       Stage.find_by(name:"Tension-Building Stage"),
    description: "Denies his or her own insecurities or frustrations"
  },

  {
    role:        Role.find_by(name: "Abuser"),
    stage:       Stage.find_by(name:"Tension-Building Stage"),
    description: "Blames victim or other for making him or her miserable"
  },

  {
    role:        Role.find_by(name: "Abuser"),
    stage:       Stage.find_by(name:"Tension-Building Stage"),
    description: "Becomes increasingly aggressive towards objects and verbally abusive towards the victim"
  },

  {
    role:        Role.find_by(name: "Abuser"),
    stage:       Stage.find_by(name:"Tension-Building Stage"),
    description: "Becomes increasingly demanding of control over the victim's life, including dictating who he or she may spend time with or how he or she may dress"
  },

  {
    role:        Role.find_by(name: "Abuser"),
    stage:       Stage.find_by(name:"Tension-Building Stage"),
    description: "Alters behavior to avoid triggering the abuser's aggression"
  },

]


behaviors.each do |behaviors_hash|
  Behavior.create!(behaviors_hash)
end

attitudes = [
  {
    role:        Role.find_by(name: "Abuser"),
    stage:       Stage.find_by(name:"Explosive Stage"),
    description: "out of control"
  },

  {
    role:        Role.find_by(name: "Abuser"),
    stage:       Stage.find_by(name:"Explosive Stage"),
    description: "that the victim is to blame"
  },

  {
    role:        Role.find_by(name: "Abuser"),
    stage:       Stage.find_by(name:"Explosive Stage"),
    description: "angry"
  },

  {
    role:        Role.find_by(name: "Abuser"),
    stage:       Stage.find_by(name:"Explosive Stage"),
    description: "the desire to control or punish the victim"
  },

  {
    role:        Role.find_by(name: "Abuser"),
    stage:       Stage.find_by(name:"Explosive Stage"),
    description: "calm, immediately after the event, because the pent-up stress has been eliminated.
                  Abusers often appear peaceful by the time law enforcement might arrive."
  },

  {
    role:        Role.find_by(name: "Victim"),
    stage:       Stage.find_by(name:"Explosive Stage"),
    description: "terrified"
  },

  {
    role:        Role.find_by(name: "Victim"),
    stage:       Stage.find_by(name:"Explosive Stage"),
    description: "shocked"
  },

  {
    role:        Role.find_by(name: "Victim"),
    stage:       Stage.find_by(name:"Explosive Stage"),
    description: "ashamed"
  },

  {
    role:        Role.find_by(name: "Victim"),
    stage:       Stage.find_by(name:"Explosive Stage"),
    description: "the desire to get the pain over with"
  },

  {
    role:        Role.find_by(name: "Victim"),
    stage:       Stage.find_by(name:"Explosive Stage"),
    description: "the desire to get the pain over with"
  },

  {
    role:        Role.find_by(name: "Abuser"),
    stage:       Stage.find_by(name:"Tension-Building Stage"),
    description: "powerless in own home"
  },

  {
    role:        Role.find_by(name: "Abuser"),
    stage:       Stage.find_by(name:"Tension-Building Stage"),
    description: "frustrated, disappointed, or insecure with things in life"
  },

  {
    role:        Role.find_by(name: "Victim"),
    stage:       Stage.find_by(name:"Tension-Building Stage"),
    description: "like he or she must walk on eggshells, being very careful not to trigger an explosion"
  },

  {
    role:        Role.find_by(name: "Victim"),
    stage:       Stage.find_by(name:"Tension-Building Stage"),
    description: "that nothing he or she does is good enough for the abuser"
  },

  {
    role:        Role.find_by(name: "Victim"),
    stage:       Stage.find_by(name:"Tension-Building Stage"),
    description: "angry, because the abuser is not keeping the promises made during the honeymoon stage"
  },

  {
    role:        Role.find_by(name: "Victim"),
    stage:       Stage.find_by(name:"Tension-Building Stage"),
    description: "powerless to stop the next beating or explosion"
  },

  {
    role:        Role.find_by(name: "Abuser"),
    stage:       Stage.find_by(name:"Honeymoon Stage"),
    description: "temporarily in control of self"
  },

  {
    role:        Role.find_by(name: "Abuser"),
    stage:       Stage.find_by(name:"Honeymoon Stage"),
    description: "fearful that the victim will leave"
  },

  {
    role:        Role.find_by(name: "Abuser"),
    stage:       Stage.find_by(name:"Honeymoon Stage"),
    description: "shame or guilt over his or her behavior"
  },

  {
    role:        Role.find_by(name: "Victim"),
    stage:       Stage.find_by(name:"Honeymoon Stage"),
    description: "guilty about thoughts of leaving the abuser"
  },

  {
    role:        Role.find_by(name: "Victim"),
    stage:       Stage.find_by(name:"Honeymoon Stage"),
    description: "the desire to escape the abuse, but hopeful that things will be better"
  },

  {
    role:        Role.find_by(name: "Victim"),
    stage:       Stage.find_by(name:"Honeymoon Stage"),
    description: "depressed and still trapped, possibly"
  },


]


attitudes.each do |attitudes_hash|
  Attitude.create!(attitudes_hash)
end
