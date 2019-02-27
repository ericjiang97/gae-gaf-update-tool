import subprocess
import sys
import os

# waf-gcp-v2 -f <csv-file> -p <project-id>

arguments = sys.argv[1:]

# argument constants
file = None
projectId = None

for i in range(0, len(sys.argv)-1, 2):
    if(arguments[i] == "-f"):
        file = arguments[i+1]
    elif(arguments[i] == "-p"):
        projectId = arguments[i+1]

print(file, projectId)

if(file == None):
    raise Exception('Error: file argument must be passed in as -f <file-name>')

if(os.path.isfile(file) == False):
    raise Exception('Error: file does not exist')