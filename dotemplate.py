import yaml
import os
import sys

from jinja2 import Environment, FileSystemLoader, select_autoescape

from pprint import pprint

base_dir = os.path.dirname(sys.argv[0])
input_file = sys.argv[1]

with open(input_file, 'r') as input_file_handle:
    input_data = input_file_handle.read()

summary_definition = yaml.load(input_data)
template_name = summary_definition['template']

print('Evaluating ' + template_name)

environment = Environment(
    loader = FileSystemLoader(os.path.join(base_dir, 'templates')),
    autoescape = select_autoescape(['xslt']),
    trim_blocks = True,
    lstrip_blocks = True,
)

template = environment.get_template(template_name)

output_file_name = os.path.splitext(input_file)[0] +  os.path.splitext(template.filename)[1]
with open(output_file_name, 'w') as fp:
    template.stream(summary_definition).dump(fp)

print('Created ' + output_file_name)
