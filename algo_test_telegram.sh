#!/bin/bash
#0) satisfiability/optimized_sprint_sat
#1) satisfiability/walk_sat
#2) satisfiability/mt_sat
#3) satisfiability/inbound
#4) satisfiability/walk_sat_adapt_tabu
#5) satisfiability/filter_sat
#6) satisfiability/fast_walk_sat
#7) satisfiability/fastest_walk_sat
#8) satisfiability/dpll_backtracking
#9) satisfiability/i_cant_get_no
#10) satisfiability/sprintier_sat
#11) satisfiability/fast_cdcl_sat_solver
#12) satisfiability/faster_walk_sat
#13) satisfiability/satisfiapilled
#14) satisfiability/double_optimized
#15) satisfiability/heuristics_gsat
#16) satisfiability/schnoing
#17) satisfiability/sprint_sat
#18) satisfiability/manual_sat
#19) satisfiability/hybrid_ultra_fast
#20) satisfiability/need_for_speed
#21) satisfiability/genetic_sat
#22) satisfiability/sat_allocd
#23) knapsack/sackophone
#24) knapsack/branch_and_bound
#25) knapsack/sack_o_potatoes
#26) knapsack/knap_suck
#27) knapsack/knapmaxxing
#28) knapsack/quick_knap
#29) knapsack/ironhat_pete
#30) knapsack/knapsplorify
#31) knapsack/greedy
#32) knapsack/quantum_knapsack
#33) knapsack/dynamic
#34) knapsack/better_knapp
#35) knapsack/genetic
#36) knapsack/optimised_knapmax
#37) knapsack/tinhat_pete
#38) knapsack/needaknap
#39) knapsack/better_knapm
#40) knapsack/filter_knapmaxxing
#41) knapsack/over_knapmaxxed
#42) knapsack/dual_descent
#43) knapsack/better_in_twos
#44) knapsack/flat_dp
#45) knapsack/overlodes_sack
#46) knapsack/ultra_fast_knapsack
#47) knapsack/lightning_knapsack
#48) knapsack/knap_zilla
#49) knapsack/knapheudp
#50) knapsack/tabu_search
#51) vehicle_routing/overloded
#52) vehicle_routing/super_heaped
#53) vehicle_routing/clarke_wright
#54) vehicle_routing/simulated_annealing
#55) vehicle_routing/aco_sbas
#56) vehicle_routing/genetic_algorithm
#57) vehicle_routing/dynamic_colonies
#58) vehicle_routing/enhanced_annealing
#59) vehicle_routing/lazier_cw
#60) vehicle_routing/inbound
#61) vehicle_routing/optimized_clarke
#62) vehicle_routing/ant_colony
#63) vehicle_routing/improv_clarke_wright
#64) vehicle_routing/clarke_wright_opt
#65) vehicle_routing/compact_gcw_turbo
#66) vehicle_routing/fast_exit_cw_topt_ls
#67) vehicle_routing/cw_two_opt_ls
#68) vehicle_routing/compact_gcw
#69) vehicle_routing/clarke_wright_super
#69) vehicle_routing/clarke_wright_super
#70) vehicle_routing/cw_heuristic
#71) vehicle_routing/limitless
#71) vehicle_routing/limitless
#72) vehicle_routing/fast_exit_clarke
#73) vehicle_routing/adaptive_cluster
#74) vehicle_routing/guided_clarke_wright
#74) vehicle_routing/guided_clarke_wright
#75) vehicle_routing/clarke_wright_who
#76) vehicle_routing/filter_cw
#77) vector_search/fast_search_cuda
#75) vehicle_routing/clarke_wright_who
#76) vehicle_routing/filter_cw
#77) vector_search/fast_search_cuda
#76) vehicle_routing/filter_cw
#77) vector_search/fast_search_cuda
#77) vector_search/fast_search_cuda
#78) vector_search/presort_msr
#79) vector_search/kd_tree
#80) vector_search/fasterer_search
#81) vector_search/gpu_manual_fastest
#82) vector_search/vector_finder_multi
#83) vector_search/manual_fast_search
#84) vector_search/bacalhau_gpu
#85) vector_search/hyperplanejane
#86) vector_search/cudabefaster
#87) vector_search/tree_times_a_lady
#88) vector_search/optimax_search
#89) vector_search/hyper_index
#90) vector_search/fast_search
#91) vector_search/cudamatata
#92) vector_search/optimal_ann
#93) vector_search/brute_force_bacalhau
#94) vector_search/optimax_gpu
#95) vector_search/gpu_manual_fast       

algos_saisis=()

# Identifiants Telegram 
TELEGRAM_BOT_TOKEN="" #inserez votre bot token entre les guillemets
TELEGRAM_CHAT_ID=""  #inserez votre user id entre les guillemets

#les valeurs entrées par défaut ont été utilisées pour un CPU ryzen 9 7900
#difficultés pour les tests - modifiez les valeurs entre les crochets
dif_satisfiability=[100,400]
dif_knapsack=[100,320]
dif_vehicle_routing=[70,30]
dif_vector_search=[200,500]
# Nonces pour les tests - modifiez la valeur à votre convenance...
nonces_satisfiability=5000
nonces_knapsack=5000
nonces_vehicle_routing=5000
nonces_vector_search=50

# L utilisateur entre le numéro d'un algo
while read -p "Entrer un chiffre (de 0 à 95 - un par un) ou appuyer sur la lettre p pour passer au test : " i
do
    if [[ "$i" =~ ^([0-9]|[1-7][0-9]|8[0-9]|9[0-5])$ ]]; then
        algos_saisis+=("$i")
    elif [ "$i" = "p" ]; then
    
        break
    else
        echo "Entrez une valeur correcte, OSTI DE  CRISSE DE TABARNAk !!!"
    fi
done

# Boucle pour traiter chaque algorithme saisi
for alg in "${algos_saisis[@]}"; do
    if [[ "$alg" =~ ^([0-9]|1[0-9]|2[0-2])$ ]]; then
        curl -s -X POST "https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendMessage" \
            -d "chat_id=$TELEGRAM_CHAT_ID&text=$(printf "%s" "Début du test de l'algorithm $alg" | jq -sRr @uri)";
        echo -e "$alg\n$dif_satisfiability\n1\n$nonces_satisfiability\no" | bash scripts/test_algorithm.sh | sed -n "/#instances: $nonces_satisfiability/,/-/p" > tests.txt
        resultat=$(cat tests.txt)
        curl -s -X POST "https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendMessage" \
            -d "chat_id=$TELEGRAM_CHAT_ID&text=$(printf "%s" "$resultat" | jq -sRr @uri)";
    elif [[ "$alg" =~ ^(2[3-9]|3[0-9]|4[0-8])$ ]]; then
        curl -s -X POST "https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendMessage" \
            -d "chat_id=$TELEGRAM_CHAT_ID&text=$(printf "%s" "Début du test de l'algorithm $alg" | jq -sRr @uri)"
        echo -e "$alg\n$dif_knapsack\n1\n$nonces_knapsack\no" | bash scripts/test_algorithm.sh | sed -n "/#instances: $nonces_knapsack/,/-/p" > tests.txt
        resultat=$(cat tests.txt)
        curl -s -X POST "https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendMessage" \
            -d "chat_id=$TELEGRAM_CHAT_ID&text=$(printf "%s" "$resultat" | jq -sRr @uri)"
    elif [[ "$alg" =~ ^(49|5[0-9]|6[0-9]|7[0-6])$ ]]; then
        curl -s -X POST "https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendMessage" \
            -d "chat_id=$TELEGRAM_CHAT_ID&text=$(printf "%s" "Début du test de l'algorithm $alg" | jq -sRr @uri)"       
        echo -e "$alg\n$dif_vehicle_routing\n1\n$nonces_vehicle_routing\no" | bash scripts/test_algorithm.sh | sed -n "/#instances: $nonces_vehicle_routing/,/-/p" > tests.txt
        resultat=$(cat tests.txt)
        curl -s -X POST "https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendMessage" \
            -d "chat_id=$TELEGRAM_CHAT_ID&text=$(printf "%s" "$resultat" | jq -sRr @uri)"
    elif [[ "$alg" =~ ^(7[6-9]|8[0-9]|9[0-5])$ ]]; then
        curl -s -X POST "https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendMessage" \
            -d "chat_id=$TELEGRAM_CHAT_ID&text=$(printf "%s" "Début du test de l'algorithm $alg" | jq -sRr @uri)"        
        echo -e "$alg\n$dif_vector_search\n1\n$nonces_vector_search\no" | bash scripts/test_algorithm.sh | sed -n "/#instances: $nonces_vector_search/,/-/p" > tests.txt
        resultat=$(cat tests.txt)
        curl -s -X POST "https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendMessage" \
            -d "chat_id=$TELEGRAM_CHAT_ID&text=$(printf "%s" "$resultat" | jq -sRr @uri)"
    fi
done
