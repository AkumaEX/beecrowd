import re


def get_num_variations(s):
    return 3**len(re.findall('[AEIOS]', s, re.IGNORECASE)) * 2**len(re.findall('[^AEIOS]', s, re.IGNORECASE))


t = int(input())
for _ in range(t):
    s = input().strip()
    num_variations = get_num_variations(s)
    print(num_variations)
