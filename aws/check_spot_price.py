#!/usr/bin/env python3

import boto3
from datetime import datetime
from argparse import ArgumentParser


def get_prices(config):
    client = boto3.client('ec2', region_name=config.region)

    data = client.describe_spot_price_history(
        DryRun=False,
        StartTime=datetime.now(),
        EndTime=datetime.now(),
        InstanceTypes=[config.instance_type],
        ProductDescriptions=['Linux/UNIX'])

    for pricepoint in data['SpotPriceHistory']:
        print(pricepoint['AvailabilityZone'], pricepoint['InstanceType'], pricepoint['SpotPrice'])


if __name__ == '__main__':
    parser = ArgumentParser(description='ec2-spot-launcher')
    parser.add_argument('--instance_type', type=str, default='p2.xlarge', help='EC2 instance type. Default: p2.xlarge')
    parser.add_argument('--ami', type=str, default='ami-65fbdb00', help='AMI. Default: Ubuntu 16.04')
    parser.add_argument('--region', type=str, default='us-east-2', help='AWS Region. Default: us-east-2')

    args = parser.parse_args()

    get_prices(args)
