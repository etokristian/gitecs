import sys
def handler(event, context):
    return 'Hello World, this is Christian from AWS Lambda using Python' + sys.version + '!'