def get_max_balls(num_pegs, lookup):
    if num_pegs in lookup:
        return max(lookup[num_pegs])

    current_state, current_ball = _load_last_state(lookup)
    while (len(current_state) <= num_pegs):
        current_ball += 1
        if not _update_current_state(current_ball, current_state):
            _save_current_state(current_state, lookup)
            current_state.append(current_ball)
    return current_ball-1


def _update_current_state(current_ball, current_state):
    for peg, last_ball in enumerate(current_state):
        is_square_number = ((last_ball + current_ball)**0.5).is_integer()
        if (is_square_number):
            current_state[peg] = current_ball
            return True


def _load_last_state(lookup):
    last_state = lookup[max(lookup)] if any(lookup) else []
    last_ball = max(last_state) if any(last_state) else 0
    return last_state, last_ball


def _save_current_state(current_state, lookup):
    lookup[len(current_state)] = current_state.copy()


lookup = {}
t = int(input())
for _ in range(t):
    num_pegs = int(input())
    print(get_max_balls(num_pegs, lookup))
