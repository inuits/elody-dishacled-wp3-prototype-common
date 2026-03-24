#!/bin/sh
src="./inuits-dams-graphql-service/generated-types/type-defs.ts"
for d in ./inuits-dams-graphql-service/modules/*/; do
  if [ -d "$d" ]; then
    mkdir -p "${d}/generated-types"
    cp "$src" "${d}/generated-types/type-defs.ts" && echo "Synced type-defs.ts to ${d}generated-types/"
  fi
done
