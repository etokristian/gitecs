import sys
def handler(event, context):
    return 'Hello from AAWS Lambda using Python' + sys.version + '!'