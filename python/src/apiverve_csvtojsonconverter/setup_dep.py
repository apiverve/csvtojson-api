from setuptools import setup, find_packages

setup(
    name='apiverve_csvtojsonconverter',
    version='1.2.3',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='CSV to JSON Converter parses raw CSV text into an array of JSON objects with column names and row counts. It handles comma, semicolon, tab, or pipe delimiters, with optional header row detection.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/csvtojson?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
