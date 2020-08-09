#!/usr/bin/env python3
from isEven import isEven

def testRange(min, max, evens):
   print('Testing [{},{}] {}...'.format(min, max, 'evens' if evens else 'odds'))
   for i in range(min, max, 2):
      i = i if evens else i - 1
      result = isEven(i)
      if(not result and evens):
         raise Exception('Test failed. Got: isEven({}) = {}. Expected: '\
                         'isEven({}) = {}.'.format(i, str(result)))
   print('Test passed.')

def main():
   testRange(0, 10000, True)
   testRange(0, 10000, False)

if __name__ == '__main__':
   main()
