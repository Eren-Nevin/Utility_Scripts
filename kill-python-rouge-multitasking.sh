ps aux | grep multiprocessing-fork | gsed -n -E '{s/mvp +([0-9]+).+/\1/gp}' | xargs kill
