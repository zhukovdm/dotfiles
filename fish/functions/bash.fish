function bash --wraps bash
    set -lx NO_FISH_BASH 1
    command bash $argv
end
