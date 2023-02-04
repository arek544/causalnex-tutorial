FROM kilimanjaro544/data-science-playground:latest

# copy Pipfile.lock
COPY requirements.txt .

# install python dependencies
RUN pip install -r requirements.txt

# install PyGraphviz
RUN apt-get install -y graphviz graphviz-dev
RUN pip install pygraphviz