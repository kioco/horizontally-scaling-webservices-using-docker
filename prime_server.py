#!/usr/bin/env python
import math
import json

from flask import Flask

app = Flask(__name__)


@app.route("/is_prime/<int:integer>")
def is_prime_route(integer):
    result = {
        "integer": integer,
        "is_prime": is_prime(integer)
    }
    return json.dumps(result, indent=4)


def is_prime(integer):
    for candidate_divisor in range(2, math.floor(math.sqrt(integer))):
        if (integer % candidate_divisor) == 0:
            return False
    return True

if __name__ == '__main__':
    app.run(host='0.0.0.0')
