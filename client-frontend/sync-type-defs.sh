#!/bin/sh
src="./inuits-dams-graphql-service/generated-types/type-defs.ts"
for d in ./inuits-dams-graphql-service/modules/*/; do
  [ -d "$d" ] && cp "$src" "${d}/type-defs.ts" && echo "Synced type-defs.ts to $d"
done
