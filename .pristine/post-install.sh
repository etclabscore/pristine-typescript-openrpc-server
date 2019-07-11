#!/bin/bash

BLUE="\033[0;34m"
RED="\033[0;31m"
NC="\033[0m" # No Color
defaultPackageName="@etclabscore\/pristine-typescript-openrpc-server"
defaultRustPackageName="pristine-typescript-openrpc-server-client"

echo ""
echo "💎  Welcome Pristine Post-Install setup! 💎"
echo ""
echo ""

echo -e "${BLUE}Enter the Package Name that will be used for the package.json:${NC}"

read packageName

echo ""

echo -e "${BLUE}Enter the Cargo package name that will be used for the Rust Client and Crates.io${NC}"

read rustClientName

echo ""

# using ~ in place of / to avoid slashes in package names conflicting with sed
sed -i  "" -e "s~${defaultPackageName}~${packageName}~g"  package.json
sed -i  "" -e "s~${defaultRustPackageName}~${rustClientName}~g"  package.json

echo -e "${BLUE} 🚀  Project Setup Completed. 🚀"

echo ""

echo -e "${RED}NOTE: This Pristine template requires extra setup inside the AWS Dashboard for ElasticBeanstalk Auto Deploys ${NC}(see CIRCLECI.md)"

echo ""
