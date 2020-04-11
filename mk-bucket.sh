#!/bin/bash
bucket=$1
aws s3 mb s3://$bucket
