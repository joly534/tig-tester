#!/bin/bash

# Available WASMs:
# 0) satisfiability/optimized_sprint_sat
# 1) satisfiability/walk_sat
# 2) satisfiability/mt_sat
# 3) satisfiability/inbound
# 4) satisfiability/walk_sat_adapt_tabu
# 5) satisfiability/filter_sat
# 6) satisfiability/fast_walk_sat
# 7) satisfiability/fastest_walk_sat
# 8) satisfiability/dpll_backtracking
# 9) satisfiability/i_cant_get_no
# 10) satisfiability/sprintier_sat
# 11) satisfiability/fast_cdcl_sat_solver
# 12) satisfiability/faster_walk_sat
# 13) satisfiability/satisfiapilled
# 14) satisfiability/double_optimized
# 15) satisfiability/schnoing
# 16) satisfiability/sprint_sat
# 17) satisfiability/hybrid_ultra_fast
# 18) satisfiability/need_for_speed
# 19) satisfiability/genetic_sat
# 20) satisfiability/sat_allocd
# 21) knapsack/sackophone
# 22) knapsack/branch_and_bound
# 23) knapsack/sack_o_potatoes
# 24) knapsack/knapmaxxing
# 25) knapsack/ironhat_pete
# 26) knapsack/knapsplorify
# 27) knapsack/greedy
# 28) knapsack/quantum_knapsack
# 29) knapsack/dynamic
# 30) knapsack/better_knapp
# 31) knapsack/genetic
# 32) knapsack/optimised_knapmax
# 33) knapsack/tinhat_pete
# 34) knapsack/needaknap
# 35) knapsack/better_knapm
# 36) knapsack/filter_knapmaxxing
# 37) knapsack/over_knapmaxxed
# 38) knapsack/dual_descent
# 39) knapsack/better_in_twos
# 40) knapsack/flat_dp
# 41) knapsack/overlodes_sack
# 42) knapsack/ultra_fast_knapsack
# 43) knapsack/lightning_knapsack
# 44) knapsack/knapheudp
# 45) knapsack/tabu_search
# 46) vehicle_routing/overloded
# 47) vehicle_routing/super_heaped
# 48) vehicle_routing/clarke_wright
# 49) vehicle_routing/simulated_annealing
# 50) vehicle_routing/aco_sbas
# 51) vehicle_routing/genetic_algorithm
# 52) vehicle_routing/dynamic_colonies
# 53) vehicle_routing/enhanced_annealing
# 53) vehicle_routing/enhanced_annealing
# 54) vehicle_routing/lazier_cw
# 55) vehicle_routing/inbound
# 56) vehicle_routing/optimized_clarke
# 57) vehicle_routing/ant_colony
# 58) vehicle_routing/improv_clarke_wright
# 59) vehicle_routing/clarke_wright_opt
# 60) vehicle_routing/compact_gcw_turbo
# 61) vehicle_routing/fast_exit_cw_topt_ls
# 62) vehicle_routing/cw_two_opt_ls
# 63) vehicle_routing/compact_gcw
# 64) vehicle_routing/limitless
# 65) vehicle_routing/fast_exit_clarke
# 66) vehicle_routing/adaptive_cluster
# 67) vehicle_routing/guided_clarke_wright
# 68) vehicle_routing/clarke_wright_who
# 69) vehicle_routing/filter_cw
# 70) vector_search/kd_tree
# 71) vector_search/hyper_index
# 72) vector_search/fast_search
# 73) vector_search/optimal_ann
# 74) vector_search/brute_force_bacalhau

algos_saisis=()

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
while read -p "Entrer un chiffre (de 0 à 74 - un par un) ou appuyer sur la lettre p pour passer au test : " i
do
    if [[ "$i" =~ ^([0-9]|[1-6][0-9]|7[0-4])$ ]]; then
        algos_saisis+=("$i")
    elif [ "$i" = "p" ]; then
        break
    else
        echo "Entrez une valeur correcte, OSTI DE CRISSE DE TABARNAk !!!"
    fi
done
echo -e "" > tests.txt

# Boucle pour traiter chaque algorithme saisi
for alg in "${algos_saisis[@]}"; do
    if [[ "$alg" =~ ^[0-9]$|^1[0-9]$|^20$ ]]; then
        echo -e "Test de l'algo $alg"
        echo -e "$alg\n$dif_satisfiability\n1\n$nonces_satisfiability\no" | bash scripts/test_algorithm.sh | sed -n "/#instances: $nonces_satisfiability/,/-/p" >> tests.txt
    elif [[ "$alg" =~ ^([2][1-9]|[3][0-9]|4[0-5])$ ]]; then
        echo -e "Test de l'algo $alg"
        echo -e "$alg\n$dif_knapsack\n1\n$nonces_knapsack\no" | bash scripts/test_algorithm.sh | sed -n "/#instances: $nonces_knapsack/,/-/p" >> tests.txt
    elif [[ "$alg" =~ ^([4][6-9]|5[0-9]|6[0-9])$ ]]; then
        echo -e "Test de l'algo $alg"
        echo -e "$alg\n$dif_vehicle_routing\n1\n$nonces_vehicle_routing\no" | bash scripts/test_algorithm.sh | sed -n "/#instances: $nonces_vehicle_routing/,/-/p" >> tests.txt
    elif [[ "$alg" =~ ^7[0-4]$ ]]; then
        echo -e "Test de l'algo $alg"
        echo -e "$alg\n$dif_vector_search\n1\n$nonces_vector_search\no" | bash scripts/test_algorithm.sh | sed -n "/#instances: nonces_vector_search/,/-/p" >> tests.txt
    fi
done
