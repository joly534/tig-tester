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
#18) satisfiability/hybrid_ultra_fast
#19) satisfiability/need_for_speed
#20) satisfiability/genetic_sat
#21) satisfiability/sat_allocd
#22) knapsack/sackophone
#23) knapsack/branch_and_bound
#24) knapsack/sack_o_potatoes
#25) knapsack/knapmaxxing
#26) knapsack/ironhat_pete
#27) knapsack/knapsplorify
#28) knapsack/greedy
#29) knapsack/quantum_knapsack
#30) knapsack/dynamic
#31) knapsack/better_knapp
#32) knapsack/genetic
#33) knapsack/optimised_knapmax
#34) knapsack/tinhat_pete
#35) knapsack/needaknap
#36) knapsack/better_knapm
#37) knapsack/filter_knapmaxxing
#38) knapsack/over_knapmaxxed
#39) knapsack/dual_descent
#40) knapsack/better_in_twos
#41) knapsack/flat_dp
#42) knapsack/overlodes_sack
#43) knapsack/ultra_fast_knapsack
#44) knapsack/lightning_knapsack
#45) knapsack/knap_zilla
#46) knapsack/knapheudp
#47) knapsack/tabu_search
#48) vehicle_routing/overloded
#49) vehicle_routing/super_heaped
#50) vehicle_routing/clarke_wright
#51) vehicle_routing/simulated_annealing
#52) vehicle_routing/aco_sbas
#53) vehicle_routing/genetic_algorithm
#54) vehicle_routing/dynamic_colonies
#55) vehicle_routing/enhanced_annealing
#56) vehicle_routing/lazier_cw
#57) vehicle_routing/inbound
#58) vehicle_routing/optimized_clarke
#59) vehicle_routing/ant_colony
#60) vehicle_routing/improv_clarke_wright
#61) vehicle_routing/clarke_wright_opt
#62) vehicle_routing/compact_gcw_turbo
#63) vehicle_routing/fast_exit_cw_topt_ls
#64) vehicle_routing/cw_two_opt_ls
#65) vehicle_routing/compact_gcw
#66) vehicle_routing/clarke_wright_super
#67) vehicle_routing/cw_heuristic
#68) vehicle_routing/limitless
#69) vehicle_routing/fast_exit_clarke
#70) vehicle_routing/adaptive_cluster
#71) vehicle_routing/guided_clarke_wright
#72) vehicle_routing/clarke_wright_who
#73) vehicle_routing/filter_cw
#74) vector_search/fast_search_cuda
#75) vector_search/kd_tree
#76) vector_search/gpu_manual_fastest
#77) vector_search/vector_finder_multi
#78) vector_search/bacalhau_gpu
#79) vector_search/hyperplanejane
#80) vector_search/cudabefaster
#81) vector_search/tree_times_a_lady
#82) vector_search/hyper_index
#83) vector_search/fast_search
#84) vector_search/cudamatata
#85) vector_search/optimal_ann
#86) vector_search/brute_force_bacalhau
#87) vector_search/optimax_gpu
#88) vector_search/gpu_manual_fast
algos_saisis=()

# Identifiants Telegram 
TELEGRAM_BOT_TOKEN="" #inserez votre bot token entre les guillemets
TELEGRAM_CHAT_ID=""  #inserez votre user id entre les guillemets

#les valeurs entrées par défaut ont été utilisées pour un CPU ryzen 9 7900
#difficultés pour les tests - modifiez les valeurs entre les crochets
dif_satisfiability=[50,400]
dif_knapsack=[60,10]
dif_vehicle_routing=[40,230]
dif_vector_search=[10,350]
# Nonces pour les tests - modifiez la valeur à votre convenance...
nonces_satisfiability=5000
nonces_knapsack=5000
nonces_vehicle_routing=5000
nonces_vector_search=50

# L utilisateur entre le numéro d'un algo
while read -p "Entrer un chiffre (de 0 à 88 - un par un) ou appuyer sur la lettre p pour passer au test : " i
do
    if [[ "$i" =~ ^([0-9]|[1-7][0-9]|8[0-8])$ ]]; then
        algos_saisis+=("$i")
    elif [ "$i" = "p" ]; then
        break
    else
        echo "Entrez une valeur correcte, OSTI DE  CRISSE DE TABARNAk !!!"
    fi
done

# Boucle pour traiter chaque algorithme saisi
for alg in "${algos_saisis[@]}"; do
    if [[ "$alg" =~ ^([0-9]|1[0-9]|20|21)$ ]]; then
        curl -s -X POST "https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendMessage" \
            -d "chat_id=$TELEGRAM_CHAT_ID&text=$(printf "%s" "Début du test de l'algorithm $alg" | jq -sRr @uri)";
        echo -e "$alg\n$dif_satisfiability\n1\n$nonces_satisfiability\no" | bash scripts/test_algorithm.sh | sed -n "/#instances: $nonces_satisfiability/,/-/p" > tests.txt
        resultat=$(cat tests.txt)
        curl -s -X POST "https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendMessage" \
            -d "chat_id=$TELEGRAM_CHAT_ID&text=$(printf "%s" "$resultat" | jq -sRr @uri)";
    if [[ "$alg" =~ ^(2[2-9]|3[0-9]|4[0-7])$ ]]; then
        curl -s -X POST "https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendMessage" \
            -d "chat_id=$TELEGRAM_CHAT_ID&text=$(printf "%s" "Début du test de l'algorithm $alg" | jq -sRr @uri)"
        echo -e "$alg\n$dif_knapsack\n1\n$nonces_knapsack\no" | bash scripts/test_algorithm.sh | sed -n "/#instances: $nonces_knapsack/,/-/p" > tests.txt
        resultat=$(cat tests.txt)
        curl -s -X POST "https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendMessage" \
            -d "chat_id=$TELEGRAM_CHAT_ID&text=$(printf "%s" "$resultat" | jq -sRr @uri)"
    if [[ "$alg" =~ ^(4[8-9]|5[0-9]|6[0-9]|7[0-3])$ ]]; then
        curl -s -X POST "https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendMessage" \
            -d "chat_id=$TELEGRAM_CHAT_ID&text=$(printf "%s" "Début du test de l'algorithm $alg" | jq -sRr @uri)"       
        echo -e "$alg\n$dif_vehicle_routing\n1\n$nonces_vehicle_routing\no" | bash scripts/test_algorithm.sh | sed -n "/#instances: $nonces_vehicle_routing/,/-/p" > tests.txt
        resultat=$(cat tests.txt)
        curl -s -X POST "https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendMessage" \
            -d "chat_id=$TELEGRAM_CHAT_ID&text=$(printf "%s" "$resultat" | jq -sRr @uri)"
    if [[ "$alg" =~ ^(7[4-9]|8[0-8])$ ]]; then
        curl -s -X POST "https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendMessage" \
            -d "chat_id=$TELEGRAM_CHAT_ID&text=$(printf "%s" "Début du test de l'algorithm $alg" | jq -sRr @uri)"        
        echo -e "$alg\n$dif_vector_search\n1\n$nonces_vector_search\no" | bash scripts/test_algorithm.sh | sed -n "/#instances: $nonces_vector_search/,/-/p" > tests.txt
        resultat=$(cat tests.txt)
        curl -s -X POST "https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendMessage" \
            -d "chat_id=$TELEGRAM_CHAT_ID&text=$(printf "%s" "$resultat" | jq -sRr @uri)"
    fi
done
