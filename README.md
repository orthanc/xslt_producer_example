This is a simple proof of concept at using Jinja2 templates to process a summary file and produce
XSLT templates to create a summary document from a known XML input format.

# Setup

In order to run this, you must be using python 3 and have the dependencies in `requirements.txt`.
These can be installed using pip

    pip install -r requirements.txt

# Usage

The main script is `dotemplate.py`, this is called with one argument which must be a YAML file
containing the key `template`. The script will simply load the matching template  from the
`templates` directory and pass the contents of the YAML file to it.

The results of evaluating the file will be written to a filename named after the input YAML
file but with the extension of the template. e.g.

    # To evaluate the html_summary.xslt template (in the templates directory) with the
    # example.yaml input file

    $ python dotemplate.py example.yaml

    Evaluating html_summary.xslt
    Created example.xslt

# References

* [Jinja2 Template Designer Documentation](http://jinja.pocoo.org/docs/2.10/templates/)
