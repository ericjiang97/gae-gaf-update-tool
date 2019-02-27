#!/bin/sh
clear

@echo off
echo Enter project-id to apply: 

read project_id

echo Applying Incapsula WAF rules...


gcloud app firewall-rules create 1 --action ALLOW --source-range 199.83.128.0/21 --description "Incapsula WAF (ALLOW, IPv4)" --project $project_id
gcloud app firewall-rules create 2 --action ALLOW --source-range 198.143.32.0/19 --description "Incapsula WAF (ALLOW, IPv4)" --project $project_id
gcloud app firewall-rules create 3 --action ALLOW --source-range 149.126.72.0/21 --description "Incapsula WAF (ALLOW, IPv4)" --project $project_id
gcloud app firewall-rules create 4 --action ALLOW --source-range 103.28.248.0/22 --description "Incapsula WAF (ALLOW, IPv4)" --project $project_id
gcloud app firewall-rules create 5 --action ALLOW --source-range 45.64.64.0/22 --description "Incapsula WAF (ALLOW, IPv4)" --project $project_id
gcloud app firewall-rules create 6 --action ALLOW --source-range 185.11.124.0/22--description "Incapsula WAF (ALLOW, IPv4)" --project $project_id
gcloud app firewall-rules create 7 --action ALLOW --source-range 192.230.64.0/18 --description "Incapsula WAF (ALLOW, IPv4)" --project $project_id
gcloud app firewall-rules create 8 --action ALLOW --source-range 107.154.0.0/16	 --description "Incapsula WAF (ALLOW, IPv4)" --project $project_id
gcloud app firewall-rules create 9 --action ALLOW --source-range 45.60.0.0/16	 --description "Incapsula WAF (ALLOW, IPv4)" --project $project_id
gcloud app firewall-rules create 10 --action ALLOW --source-range 45.223.0.0/16 --description "Incapsula WAF (ALLOW, IPv4)" --project $project_id
gcloud app firewall-rules create 11 --action ALLOW --source-range 2a02:e980::/29 --description "Incapsula WAF (ALLOW, IPv6)" --project $project_id

# Probs needs to find a way to rewrite the default rule
gcloud app firewall-rules update default --action deny --project $project_id