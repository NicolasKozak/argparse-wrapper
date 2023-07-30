#! /usr/bin/env python

"""
Argparse wrapper. Edit this docstring to add a relevant description for your usecase.
"""

import argparse
import os
import sys

parser = argparse.ArgumentParser(description=__doc__, add_help=False)

parser.add_argument("experiment_name", type=str, metavar="EXPERIMENT_NAME",
                    help="Testdrive report name, name it after experiment or similar")
parser.add_argument("logical_index", type=str, metavar="LOGICAL_INDEX",
                    help="Logical index to collect samples from")
parser.add_argument("num_samples", type=str, metavar="INT", help="Number of samples")
parser.add_argument('-h', '--help', action='store_true')

args, other_args = parser.parse_known_args()

if args.help:
    parser.print_help()
    print()
    print("original_script --help")
    print('=' * 79)
    print()
    # os.system("original_script --help")

# INSERT OTHER LOGIC HERE
models_string = "MODELS_STRINGS"

cmd = ("original_command"
       f" --experiment-name {args.experiment_name}"
       f" --indexes {args.logical_index}"
       f" --pmml-files {models_string}"
       f" --num_samples {args.num_samples}"
)

cmd = cmd + ' ' + ' '.join(other_args)


print(cmd)
#os.system(cmd)