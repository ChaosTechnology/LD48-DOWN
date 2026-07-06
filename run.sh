#!/bin/bash

# Build and run LD48-DOWN and restore/build all required dependencies.

set -euo pipefail

SolutionDir="$(realpath "$(dirname "${BASH_SOURCE[0]}")")/"
cd "$SolutionDir"

tf="net8.0"
case "$(uname -s | tr '[:upper:]' '[:lower:]')" in
  mingw*|msys*|cygwin*|windows*) tf="net8.0-windows" ;;
esac

bash ./build.sh
SolutionDir="$SolutionDir" bash -c 'dotnet run "./LD48.sln" --project "./LD48/" --framework "'"$tf"'" --configuration Debug'
