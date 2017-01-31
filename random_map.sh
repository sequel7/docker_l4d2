# Array with expressions
#expressions=("c1m1_hotel" "c2m1_highway" "c3m1_plankcountry" "c4m1_milltown_a" "c5m1_waterfront")
expressions=("c1m1_hotel" "c1m2_streets" "c1m3_mall" "c1m4_atrium" "c2m1_highway" "c2m2_fairgrounds" "c2m3_coaster" "c2m4_barns" "c2m5_concert" "c3m1_plankcountry" "c3m2_swamp" "c3m3_shantytown" "c3m4_plantation" "c4m1_milltown_a" "c4m2_sugarmill_a" "c4m3_sugarmill_b" "c4m4_milltown_b" "c4m5_milltown_escape" "c5m1_waterfront" "c5m2_park" "c5m3_cemetery" "c5m4_quarter" "c5m5_bridge")

# Seed random generator
RANDOM=$$$(date +%s)

# Get random expression...
selectedexpression=${expressions[$RANDOM % ${#expressions[@]} ]}

# Write to Shell
echo -n $selectedexpression
