import argparse
import numpy as np
from pathlib import Path
import yaml


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--config", default="./configs/config1.yaml", help="Path to config file")
    parser.add_argument("--param1", default=2, type=int, help="First parameter of experiment")
    parser.add_argument("--param2", default=10, type=int, help="Second parameter of experiment")
    args = parser.parse_args()

    print(f"Args passed to script: {args}")

    with open(args.config, "r") as config_file:
        exp_config = yaml.safe_load(config_file)

    save_path = f"./save/exp_results_{args.param1}_{args.param2}.txt"
    print(f"Saving results to: {save_path}")

    with open(save_path, "w") as file:
        file.write(f"Config: {exp_config}\n")
        file.write(f"Param1: {args.param1} and Param2: {args.param2}")