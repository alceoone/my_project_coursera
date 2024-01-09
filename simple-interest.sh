#!/bin/bash

# Skrip untuk menghitung bunga sederhana

# Fungsi untuk menghitung bunga sederhana
calculate_simple_interest() {
    principal=$1
    rate=$2
    time=$3

    # Rumus bunga sederhana
    interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)

    # Total jumlah
    total=$(echo "scale=2; $principal + $interest" | bc)

    # Menampilkan hasil
    echo "Bunga Sederhana:"
    echo "Principal Amount: $principal"
    echo "Rate of Interest: $rate"
    echo "Time (in years): $time"
    echo "Interest Earned: $interest"
    echo "Total Amount: $total"
}

# Memanggil fungsi dengan nilai contoh
calculate_simple_interest 1000 5 2
