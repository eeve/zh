
#!/bin/bash

curl -fsSL https://deno.land/x/install/install.sh | sh
nohup DENO_INSTALL="$HOME/.deno" PATH="$DENO_INSTALL/bin:$PATH" deno run --allow-net mod.ts > serve.log 2>&1 &