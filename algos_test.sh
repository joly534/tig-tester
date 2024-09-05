#!/bin/bash
#0) satisfiability/ultra_sat_allocd
#1) satisfiability/optimized_sprint_sat
#2) satisfiability/satisfactory
#3) satisfiability/walk_sat
#4) satisfiability/mt_sat
#5) satisfiability/inbound
#6) satisfiability/walk_sat_adapt_tabu
#7) satisfiability/filter_sat
#8) satisfiability/fast_walk_sat
#9) satisfiability/fastest_walk_sat
#10) satisfiability/dpll_backtracking
#11) satisfiability/i_cant_get_no
#12) satisfiability/sat_opaafast
#13) satisfiability/sprintier_sat
#14) satisfiability/fast_cdcl_sat_solver
#15) satisfiability/faster_walk_sat
#16) satisfiability/satisfiapilled
#17) satisfiability/double_optimized
#18) satisfiability/heuristics_gsat
#19) satisfiability/sat_optima
#20) satisfiability/schnoing
#21) satisfiability/sprint_sat
#22) satisfiability/manual_sat
#23) satisfiability/sat_opaa
#24) satisfiability/hybrid_ultra_fast
#25) satisfiability/need_for_speed
#26) satisfiability/genetic_sat
#27) satisfiability/sat_allocd
#28) knapsack/sackophone
#29) knapsack/branch_and_bound
#30) knapsack/sack_o_potatoes
#31) knapsack/knap_suck
#32) knapsack/optimism_dollop
#33) knapsack/knapmaxxing
#34) knapsack/quick_knap
#35) knapsack/ironhat_pete
#36) knapsack/knapsplorify
#37) knapsack/greedy
#38) knapsack/quantum_knapsack
#39) knapsack/dynamic
#40) knapsack/better_knapp
#41) knapsack/genetic
#42) knapsack/optimised_knapmax
#43) knapsack/tinhat_pete
#44) knapsack/needaknap
#45) knapsack/better_knapm
#46) knapsack/filter_knapmaxxing
#47) knapsack/over_knapmaxxed
#48) knapsack/dual_descent
#49) knapsack/better_in_twos
#50) knapsack/flat_dp
#51) knapsack/optimized_aa
#52) knapsack/overlodes_sack
#53) knapsack/ultra_fast_knapsack
#54) knapsack/lightning_knapsack
#55) knapsack/knap_zilla
#56) knapsack/knapheudp
#57) knapsack/tabu_search
#58) vehicle_routing/overloded
#59) vehicle_routing/super_heaped
#60) vehicle_routing/clarke_wright
#61) vehicle_routing/simulated_annealing
#62) vehicle_routing/aco_sbas
#63) vehicle_routing/genetic_algorithm
#64) vehicle_routing/dynamic_colonies
#65) vehicle_routing/enhanced_annealing
#66) vehicle_routing/lazier_cw
#67) vehicle_routing/inbound
#68) vehicle_routing/optimized_clarke
#69) vehicle_routing/ant_colony
#70) vehicle_routing/improv_clarke_wright
#71) vehicle_routing/clarke_wright_opt
#72) vehicle_routing/compact_gcw_turbo
#73) vehicle_routing/fast_exit_cw_topt_ls
#74) vehicle_routing/cw_two_opt_ls
#75) vehicle_routing/compact_gcw
#76) vehicle_routing/clarke_wright_super
#77) vehicle_routing/cw_heuristic
#78) vehicle_routing/limitless
#79) vehicle_routing/fast_exit_clarke
#80) vehicle_routing/quick_cw
#81) vehicle_routing/adaptive_cluster
#82) vehicle_routing/guided_clarke_wright
#83) vehicle_routing/cw_super_gpu
#84) vehicle_routing/clarke_wright_who
#85) vehicle_routing/filter_cw
#86) vector_search/fast_search_cuda
#87) vector_search/presort_msr
#88) vector_search/kd_tree
#89) vector_search/fasterer_search
#90) vector_search/gpu_manual_fastest
#91) vector_search/vector_finder_multi
#92) vector_search/manual_fast_search
#93) vector_search/bacalhau_gpu
#94) vector_search/hyperplanejane
#95) vector_search/cudabefaster
#96) vector_search/tree_times_a_lady
#97) vector_search/optimax_search
#98) vector_search/hyper_index
#99) vector_search/fast_search
#100) vector_search/cudamatata
#101) vector_search/optimal_ann
#102) vector_search/brute_force_bacalhau
#103) vector_search/optimax_gpu
#104) vector_search/gpu_manual_fast    

algos_saisis=()

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
    if [[ "$i" =~ ^([0-9]|[1-9][0-9]|10[0-4])$ ]]; then
        algos_saisis+=("$i")
    elif [ "$i" = "p" ]; then
        break
    else
        echo "Entrez une valeur correcte, OSTI DE  CRISSE DE TABARNAk !!!"
    fi
done

# Boucle pour traiter chaque algorithme saisi
for alg in "${algos_saisis[@]}"; do
    if [[ "$alg" =~ ^([0-9]|1[0-9]|2[0-7])$ ]]; then
        echo -e "Test de l'algo $alg"
        echo -e "$alg\n$dif_satisfiability\n1\n$nonces_satisfiability\no" | bash scripts/test_algorithm.sh | sed -n "/#instances: $nonces_satisfiability/,/-/p" >> tests.txt
    elif [[ "$alg" =~ ^(2[8-9]|3[0-9]|4[0-9]|5[0-7])$ ]]; then
        echo -e "Test de l'algo $alg"
        echo -e "$alg\n$dif_knapsack\n1\n$nonces_knapsack\no" | bash scripts/test_algorithm.sh | sed -n "/#instances: $nonces_knapsack/,/-/p" >> tests.txt
    elif [[ "$alg" =~ ^(5[8-9]|6[0-9]|7[0-9]|8[0-5])$ ]]; then
        echo -e "Test de l'algo $alg"
        echo -e "$alg\n$dif_vehicle_routing\n1\n$nonces_vehicle_routing\no" | bash scripts/test_algorithm.sh | sed -n "/#instances: $nonces_vehicle_routing/,/-/p" >> tests.txt
    elif [[ "$alg" =~ ^(8[6-9]|9[0-9]|10[0-4])$ ]]; then
        echo -e "Test de l'algo $alg"
        echo -e "$alg\n$dif_vector_search\n1\n$nonces_vector_search\no" | bash scripts/test_algorithm.sh | sed -n "/#instances: $nonces_vector_search/,/-/p" >> tests.txt
    fi
done
