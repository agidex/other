#!/usr/bin/env python3

бали = "44445454444 44555454 5554545545 55554454545 555544534555 555555555555 5555454555 4343533335"
бали_цифрами = [int(i) for i in бали if i != ' ']
середній_бал = sum(бали_цифрами)/len(бали_цифрами)
print(середній_бал)
