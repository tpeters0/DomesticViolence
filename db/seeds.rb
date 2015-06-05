
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
