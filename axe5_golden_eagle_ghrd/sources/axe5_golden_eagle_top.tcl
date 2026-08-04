# run_all.tcl

set project_name "axe5_golden_eagle_top"
set revision_name "axe5_golden_eagle_top"

puts "Opening project: $project_name"
project_open -revision $revision_name $project_name

# Source child scripts in order
source sources/axe5_golden_eagle_pin_assignment.tcl

# Save all assignments and close
export_assignments
project_close

puts "All assignments complete."