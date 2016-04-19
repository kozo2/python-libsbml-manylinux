FROM quay.io/pypa/manylinux1_x86_64

RUN cd; wget https://pypi.python.org/packages/source/p/python-libsbml/python_libsbml-5.13.0.tar.gz --no-check-certificate; tar xf python_libsbml-5.13.0.tar.gz; cd python-libsbml-5.13.0; /opt/python/cp35-cp35m/bin/python setup.py bdist_wheel; auditwheel repair dist/python_libsbml-5.13.0-cp35-cp35m-linux_x86_64.whl
