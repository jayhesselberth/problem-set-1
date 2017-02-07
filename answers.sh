#! /usr/bin/env bash 

datasets='/Users/jayhesselberth/devel/MOLB7621/data-sets'
# Which state has the highest popultion?

states="$datasets/misc/states.tab.gz"

# Which state in states.tab.gz has the lowest murder rate?

answer_1=$(gzcat $states \
    | grep -v '^#' \
    | cut -f1,6 \
    | sort -k2g \
    | head -n1 \
    | cut -f1)

echo "answer-1: $answer_1"

# How many sequence records are in the sample.fa file?

sample="$datasets/fasta/sample.fa"
answer_2=$(grep '^>' $sample | wc -l)
echo "answer-2: $answer_2"

