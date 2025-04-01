FROM public.ecr.aws/lambda/python:3.12

# Copy requirements.txt
COPY requirements.txt ${LAMBDA_TASK_ROOT}

# Install the specified packages
RUN pip install -r requirements.txt

# Copy function code
COPY lambda_function.py ${LAAMBDA_TASK_ROOT}

# Set the CMD to you handler (couldalso be done as a parameter override outside of the Dockerfile)
CMD [ "lambda_function.handler" ]
