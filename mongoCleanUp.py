#!/usr/bin/env python3

URL = 'mongodb://ds129801.mlab.com:29801/heroku_qt25j2rs'
USER = 'heroku_qt25j2rs'
PASSWORD = '4gauh5npcl7r74295btd9028ls'
CMD = ['mongo', '-u', USER, '-p', PASSWORD]

COMMANDS = """
show collections
"""
COMMANDS = str.encode(COMMANDS)


from subprocess import Popen, PIPE, STDOUT
p = Popen(CMD, stdout=PIPE, stdin=PIPE, stderr=PIPE)
stdout_data = p.communicate(input=COMMANDS)[0]
print(stdout_data)
