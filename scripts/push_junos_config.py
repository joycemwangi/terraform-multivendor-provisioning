import sys
import argparse
from jnpr.junos import Device
from jnpr.junos.utils.config import Config

def push_junos_config(ip, username, password):
    with Device(host=ip, user=username, passwd=password) as dev:
        with Config(dev, mode='private') as cu:
            cu.load("set system host-name Terraform-Junos", format="set")
            cu.commit()

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("ip")
    parser.add_argument("username")
    parser.add_argument("password")
    args = parser.parse_args()

    push_junos_config(args.ip, args.username, args.password)
