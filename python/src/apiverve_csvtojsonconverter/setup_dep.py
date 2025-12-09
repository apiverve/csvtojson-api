from setuptools import setup, find_packages

setup(
    name='apiverve_csvtojsonconverter',
    version='1.1.12',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='CSV to JSON Converter is a powerful tool for converting CSV data into JSON format. It supports custom delimiters, header detection, and handles quoted fields properly.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
