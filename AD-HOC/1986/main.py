def translate(hex_word):
    dictionary = {'61': 'a', '62': 'b', '63': 'c', '64': 'd', '65': 'e', '66': 'f', '67': 'g', '68': 'h', '69': 'i', '6A': 'j', '6B': 'k', '6C': 'l',
                  '6D': 'm', '6E': 'n', '6F': 'o', '70': 'p', '71': 'q', '72': 'r', '73': 's', '74': 't', '75': 'u', '76': 'v', '77': 'w', '78': 'x', '79': 'y', '7A': 'z'}
    return ''.join(map(lambda hex: dictionary[hex], hex_word))


_ = input()
hex_word = input().split()
print(translate(hex_word))
