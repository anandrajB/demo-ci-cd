FROM python:3.14


WORKDIR /code



COPY pyproject.toml uv.lock /code/


RUN pip install uv 


RUN uv sync --no-dev
COPY . /code/
CMD [ "uv" , "run" , "fastapi", "dev"]