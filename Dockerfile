FROM python:3.14


WORKDIR /code



COPY pyproject.toml uv.lock /code/


RUN pip install uv 

RUN uv install 


COPY ./app /code/app


CMD [ "uv" , "run" , "fastapi", "dev"]