from enum import Enum

# creating variables
name = "Beau"
age = 39
age2 = 35.9

# defining the variable types
print(name)
print(type(name))
print(type(age))
print(type(age2))

# comparing variables to data types
print(type(name) == str)
print(type(age) == int)
print(type(age2) == int)
print(isinstance(name, str))
print(isinstance(age, int))
print(isinstance(age2, int))

# converting data types

age_change = float(28)
print(isinstance(age_change, float))

age = int("20")
print(isinstance(age, int))

# casting a data type
number = "27"
age = int(number)
print(isinstance(age, int))

# number = "test" # meant to be wrong to be an example of what not to do
# age = int(number)
# print(isinstance(age, int))


# data types
# complex for complex numbers
# bool for boolean
# lists for lists
# tuple for tuples
# range for ranges
# dict for dictionaries
# set for sets
#
# # operators
# # assignment operator is =
# age= 29
# # addition operator is +
# 1+1
# age = 8
# age +=8
# # subtraction operator is -
# 5-3
# age = 8
# age -=8
# # multiplication operator is *
# 5*8
# age=8
# age *=8
# # division operator is /
# 10/2
# age= 8
# age /= 8
# # remainder operator is %
# 4 % 3
# # exponents operator is **
# 4 ** 2
# # floor division operator is //
# 25 // 6
#
# # comparison operators
# # equal to
# a == b
#
# # not equal to
# a !=b
#
# # greater than
# a > b
#
# # greater than or equal to
# a >= b
#
# # less than
# a < b
#
# # less than or equal to
# a <= b

# boolean operators
# condition1 = True
# condition2 = False

# not condition1
# condition1 and condition2
# condition1 or condition2

# print(0 or 1)
# print(False or 'hey')
# print('hi' or 'hey')
# print([] or False)
# print(False or [])
#
# print(0 and 1)
# print(1 and 0)
# print(False and "hey")
# print("hi" and 'hey')
# print([] and False)
# print( False and []

# bitwise operators
# & performs binary AND
# | performs binary OR
# ^ performs binary XOR operation
# ~ performs binary NOT operation
# << shift left operation
# >> shift right operation

# is and not in operators
# IN if a value is contained with in a sequence like lists
# IS identity operator

# ternary operator defines a conditional
def is_adult(age):
    if age > 18:
        return True
    else:
        return False

def is_adult2(age):
    return True if age > 18 else False

# Strings
"Beau"
'Omegea'
name = 'Omegea'
phrase = name + ' is better'
print(phrase)

name += ' is better'

# multiline string
print(
        """" Baeu is 

39 

years old"""
        )

print(name[:])

# Makes every letter uppercase
print(name.upper())
# makes ever letter lowercase
print(name.lower())
# titles the first letter in the string
print(name.title())
# checks if it all lowercase letters
print(name.islower())
# to check if a string is uppercase
print(name.isupper())
# to check if a string contains only characters and is not empty
print(name.isalpha())
# to check if a string contains characters or digits and is not empty
print(name.isalnum())
# to check if a string contains digits and is not empty
print(name.isdecimal())
# to check if the string starts with a specific substring
print(name.startswith("Beau"))
# to check if the string ends with a specific substring
print(name.endswith(""))
# to replace a part of the string
print(name.replace("Omegea", "Urban"))
# to split a string on a specific character separator
print(name.split("g"))
# to trim the whitespce from a string
print(name.strip())
# to append new letters to a string
print(name.join("Hunter"))
# to find the position of a substring
print(name.find("m"))
# gives the length of a string
print(len(name))
# to convert from caps to lowercase
print(name.swapcase())
# if the string contains specific characters
print("eg" in name)

# escaping characters: the next characters is not going to what it normally means, it will just become a port of the
# string
name = "Omegea \"Urban Jungle Goddess\""
print(name)

# starts a new line
name = "Omegea\nUrban"
print(name)

# print a specific character in a string by index
name = "Urban Jungle Goddess"
print(name[1])
print(name[-1])
print(name[:9])
print(name[1:6])
print(name[4:])

# boolean typess
done = True
# done = 1
# done = 0
# done = 25
# done = "Omegea"

if done:
    print("yes")
else:
    print("no")

print(type(done) == bool)

# complex numbers
num1 = complex(2 + 3j)
num2 = complex(2, 3)
print(num1.real, num1.imag)
print(num2.real, num2.imag)

# will retun the absolute value of a number
print(abs(5.5677809776899))

# round to the integer
print(round(5.542490))
print(round(2484.239204, 2))

# enums = are readable names that are bound to a consistent value


# creates constant values in python, the only way to create constants
class State(Enum):
    INACTIVE = 0
    ACTIVE = 1
    DEACTIVATED = -1
    PENDING = 2
    COMPLETED = 3

print(State.INACTIVE.value, State.ACTIVE.value)
print(State(3))
print(State['ACTIVE'])
print(State['PENDING'].value)
print(list(State))
print(len(State))

# input statement
age = input("How old are you? ")
print("Your age is ", age)

# control statements:

condition = True
if condition == True:
    print("The condition is true")
    print("The condition is ever")
else:
    print("The condition is false")

condition = False
name = input("What is your name? ")
if condition == True:
    print("The condition was true ")
elif name == "Omegea":
    print("Hello Omegea")
elif name == "Urban":
    print("Urban Jungle Goddess")
else:
    print("Invalid")

# list
# made with square brackets
businesses = ["FPH", "LDU", "UJG", "JMR", "AMR", "TND", "OCC", "KTW", "DMC", "HBB", "KUR", "AMC"]

print("JMR" in businesses)
print(businesses[4])
print(businesses[3:])
print(businesses[-5])
print(len(businesses))

businesses.append("FTC")
# businesses += [""]
print(businesses)
print(len(businesses))
# businesses.remove("TND")
# businesses.pop()
# businesses.insert(5, "ECOM Store")
# print(businesses)
# # slice
# businesses[1:4] = ["ECOM Store", "Services", "Business Services", "Digital Produtcs"]
# print(businesses)

businesses.sort()
print(businesses)

print(sorted(businesses, key=str.lower))

# tuples
# made wwith parentheses
businesses = ('Fierce Peace Holdings', 'Leo Dove Unlimited', 'Urban Jungle Goddess', 'Jungle Medicine Resort',
              'Amur Management Real Estate', 'The Nile Drip', 'Omega Car Company', 'Krygsnan Technology Works',
              'Dove Millennial Club', 'Humble Beast Bakery', 'Kiafrika Urembo Restaurant', 'African Misphet Catering')

print(len(businesses))
print(businesses[4:8])
print(businesses[3])

# dictionary

# made with curvy brackets
subsid = {"name": 'Fierce Peace Holdings', 'abbrev': 'FPH'}

print(subsid)
# prints the vaule of a key in the dictionary
print(subsid['abbrev'])
print(subsid['name'])

print(subsid.get("abbrev", None))
# prints the key names in the dictionary
print(subsid.keys())
# print the values of the keys in the dictionary
print(subsid.values())
# put the values of the keys in a list
print(list(subsid.values()))
# puts the keys and values into a list
print(subsid.items())
# adds to the dictionary
subsid["start"] = ('2021')
# deletrs from a dicionary
del subsid["abbrev"]
# copies a dictionary
sudsid2 = subsid.copy()

# sets
# made with curly brackets with no key value pairs and not ordered,
# usually made with math, cannont have two of the same item
set1 = {"roger", "syd"}
set2 = {"roger", "luna"}

# shows the iiems they have in common
intersect = set1 & set2
print(intersect)

# creates a union of two sets
mod = set1 | set2
print(mod)

# gets the difference between two sets
mod2 = set1 - set2
print(mod2)

# check if a set is a supperset of another
mod3 = set1 > set2
mod4 = set1 < set2
print(mod3)
print(mod4)

# getting the number of items in a set
print(len(set1))
print(len(set2))

# getting the list of items within a set
print(list(set1))
print(list(set2))

# functions
def hello():
    print("Hello World")

hello()

# a function with a parameter
def hello_name(name):
    print('Hello ' + name)

# function with a argument
hello_name('Omegea')
hello_name('Urban')

# use the function without having to pass a argument to run/ has a default option
def hello_name2(name='my friend'):
    print('Hello ' + name)

hello_name2('')

# function with 2 parameters
def hello2(name, age):
    print('Hello ' + name + ', you are ' + str(age) + ' years old')

hello2('Omegea', 30)

hello2('Urban', 30)

# function that prints something inside the function as well as returns something
def hello3(name, age, current):
    print('Hello ' + name + ', you are ' + str(age) + ' years old. Today is ' + str(current))
    return name, age, current

print(hello3('Omegea', 30, "02/17/2024"))

# nested functions
def talk(phrase):
    def say(word):
        print(word)

    words = phrase.split(' ')
    for word in words:
        say(word)

talk('I am going to buy the milk')

#  calling a variable from one function to another
def count():
    count = 0

    def increment():
        nonlocal count
        count = count + 1
        print(count)

    increment()

count()

# objects : pretty much everything is an object

# loops
condition = True
# infinite loop that never ends unless something happens on the second iteration
while condition:
    print('The condition is true.')
    condition == False

# loop that only goes up to a certain number of iterations
count = 0
while count < 10:
    print('The condition is true.')
    count += 1
print('After the loop is finished.')

# for loop on a tuple
businesses = ('Fierce Peace Holdings', 'Leo Dove Unlimited', 'Urban Jungle Goddess', 'Jungle Medicine Resort',
              'Amur Management Real Estate', 'The Nile Drip', 'For The Congo', 'Omega Car Company',
              'Krygsnan Technology Works',
              'Dove Millennial Club', 'Humble Beast Bakery', 'Kiafrika Urembo Restaurant', 'African Misphet Catering')

for business in businesses:
    print(f'{business}')
# for loop on a tuple that returns the index and the item
for index, business in enumerate(businesses):
    print(f'{index}', f'{business}')

# for loop on a list
businesses = ["FPH", "LDU", "UJG", "JMR", "AMR", "TND", "FTC", "OCC", "KTW", "DMC", "HBB", "KUR", "AMC"]

for business in businesses:
    print(business)

# for loop that returns the index and the item
for index, business in enumerate(businesses):
    print(index, business)

# for loop on a range
for num in range(1, 11):
    print(num)

for num2 in range(20):
    print(num2)

# break and continue
items = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
for item in items:
    # this is going to skip the number 2
    if item == 2:
        continue
    print(item)

for item in items:
    if item == 2:
        # this stops the loop completely
        break
    print(item)

# classes: you create your own class and use it for your code
businesses = ('Fierce Peace Holdings', 'Leo Dove Unlimited', 'Urban Jungle Goddess', 'Jungle Medicine Resort',
              'Amur Management Real Estate', 'The Nile Drip', 'For The Congo', 'Omega Car Company',
              'Krygsnan Technology Works',
              'Dove Millennial Club', 'Humble Beast Bakery', 'Kiafrika Urembo Restaurant', 'African Misphet Catering')
businesses2 = ["FPH", "LDU", "UJG", "JMR", "AMR", "TND", "FTC", "OCC", "KTW", "DMC", "HBB", "KUR", "AMC"]

class Business:
    def sub(self):
        print('I am in business')

# create a constructor
class Business2(Business):
    def __init__(self, name, abrrev):
        self.name = name
        self.abrrev = abrrev

FPH = Business2('Fierce Peace Holdings', 'FPH')
LDU = Business()
UJG = Business()
JMR = Business()

print(FPH.name)
print(FPH.abrrev)
LDU.sub()
# inherited the business class
FPH.sub()

# modules : every python file is a module it how they create the software that uses multiple files of python
# import greetings  # imports every fuction and everything from the file

print(greeting)

# from greetings import greeting  # name specific things needed form the file and invoke them into another file
# print(greeting())

# When dealing with a sub-folder you have to add a __init__.py file in order to call a file from that specific folder
# from sub-folder import file

# Call a specific function
# from sub-folder.file import function

# some common libraries in python
# math for math utilities
# re for regular expressions
# json to work with JSON
# datetime to work with dates
# sqlite to use SQLite
# os for Operating System Utilities
# random for random number generation
# statistics for the statistics utilities
# requests to perform HTTP network requests
# http to create HTTP servers
# urllib to manage URLs

# getting the methods from libraries
# import math
# from math import sqrt

# to accept arguments from a argument in command line
print('hello')

import sys

print(sys.version)
print(sys.version_info)
print(sys.platform)

# lambda functions are anonymous

lambda num: num * 2

multiply = lambda x, y: x * y
print(multiply(5, 5))

# map, filter, reduce

# map
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

def double(a):
    return a * 2

result = map(double, numbers)
print(list(result))

double = lambda a: a * 2
result = map(double, numbers)
print(list(result))

result = map(lambda a: a * 2, numbers)
print(list(result))

# filter

def isEven(n):
    return n % 2 == 0

result = filter(isEven, numbers)
print(list(result))

result = filter(lambda n: n % 2 == 0, numbers)
print(list(result))

from functools import reduce

# reduce
businesses = [('Fierce Peace Holdings', 20000000), ('Leo Dove Unlimited', 100000), ('Urban Jungle Goddess', 399949),
              ('Jungle Medicine Resort, 44884884'), ('Amur Management Real Estate', 475743), ('The Nile Drip', 3748282),
              ('For The Congo', 324899),
              ('Omega Car Company', 33388849), ('Krygsnan Technology Works', 87758449),
              ('Dove Millennial Club', 48232324), ('Humble Beast Bakery', 2382983),
              ('Kiafrika Urembo Restaurant', 84875754), ('African Misphet Catering', 457598)]
# businesses2 = ["FPH", "LDU", "UJG", "JMR", "AMR", "TND", "FTC", "OCC", "KTW", "DMC", "HBB", "KUR", "AMC"]


sum = 0
for expense in businesses:
    sum += expense + [1]
print(sum)

sum2 = reduce(lambda x, y: a[1] + b[1], businesses)
print(sum2)

# recurrsion

# factorial
3 != 3 * 2 * 1
4 != 4 * 3 * 2 * 1
5 != 5 * 4 * 3 * 2 * 1

def factorial(n):
    if n == 1: return 1
    return n * factorial(n - 1)

print(factorial(4))

# decorators changes how the functions works

def logtime(func):
    def wrapper():
        print('before')
        # do something before
        val = func()
        # do something after
        print('after')
        return val

    return wrapper

@logtime
def hello():
    print("Hello World")

hello()

# list compressions
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# for loop
numbers_power = []
for i in numbers:
    numbers_power.append(i ** 2)
print(numbers_power)

# list compression
num_power = [n ** 2 for n in numbers]
print(num_power)

# map function
nu_power = list(map(lambda n: n ** 2, numbers))
print(nu_power)

# polymorphism

# operator overloading
businesses = [('Fierce Peace Holdings', 'FPH', 200000000),
              ('Leo Dove Unlimited', 'LDU', 100000),
              ('Urban Jungle Goddess', 'UJG', 399949),
              ('Jungle Medicine Resort', 'JMR', 44884884),
              ('Amur Management Real Estate', 'AMR', 475743),
              ('The Nile Drip', 'TND', 3748282),
              ('For The Congo', 'FTC', 324899),
              ('Omega Car Company', 'OCC', 33388849),
              ('Krygsnan Technology Works', 'KTW', 87758449),
              ('Dove Millennial Club', 'DMC', 48232324),
              ('Humble Beast Bakery', 'HBB', 2382983),
              ('Kiafrika Urembo Restaurant', 'KUR', 84875754),
              ('African Misphet Catering', 'AMC', 457598)]

class biz():
    def __init__(self, name, abrrev, goal):
        self.name = name
        self.abrrev = abrrev
        self.goal = goal

    def __gt__(self, other):
        return True if self.goal > other.goal else False

FPH = biz('Fierce Peace Holdings', 'FPH', 200000000)
LDU = biz('Leo Dove Unlimited', 'LDU', 95935233)
UJG = biz('Urban Jungle Goddess', 'UJG', 399949)
JMR = biz ('Jungle Medicine Resort', 'JMR', 44884884)
AMR = biz ('Amur Management Real Estate', 'AMR', 475743)
TND = biz('The Nile Drip', 'TND', 3748282)
FTC = biz('For The Congo', 'FTC', 324899)
OCC = biz('Omega Car Company', 'OCC', 33388849)
KTW = biz('Krygsnan Technology Works', 'KTW', 87758449)
DMC = biz('Dove Millennial Club', 'DMC', 48232324)
HBB = biz('Humble Beast Bakery', 'HBB', 2382983)
KUR = biz('Kiafrika Urembo Restaurant', 'KUR', 84875754)
AMC = biz('African Misphet Catering', 'AMC', 457598)

print(FPH > UJG)
print(FPH < UJG)
print(FPH == UJG)
print(JMR > AMC)
print(LDU < JMR)
print(KTW > AMC)

