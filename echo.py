from flask import Flask, make_response, jsonify, request
import logging

logger = logging.getLogger(__name__)

app = Flask(__name__)

@app.route("/")
def unprotected():
    logging.info(request.args)
    logging.info(request.__dict__)
    resp = " ".join(request.args) if len(request.args) > 0 else None
    return make_response("Echo, echo, echo" if resp is None else resp)
