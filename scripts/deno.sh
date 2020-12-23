
#!/bin/bash

curl -fsSL https://deno.land/x/install/install.sh | sh
export DENO_INSTALL="$HOME/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
nohup deno run --allow-net mod.ts > serve.log 2>&1 &