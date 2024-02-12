def num_correct_duration(compasses):
    correct_duration = 0
    for compass in compasses:
        if _is_duration_correct(compass):
            correct_duration += 1
    return correct_duration


def _is_duration_correct(compass):
    duration = {'W': 1, 'H': 0.5, 'Q': 0.25, 'E': 0.125,
             'S': 0.0625, 'T': 0.03125, 'X': 0.015625}
    total = 0
    for note in compass:
        total += duration[note]
    return total == 1.0


while not '*' in (compasses := input().split('/')):
    print(num_correct_duration(compasses))
