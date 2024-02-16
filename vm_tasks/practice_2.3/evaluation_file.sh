#!/bin/bash

d="Monday"
ed=$(./script.sh)

[ "${d}" == "${ed}" ]
