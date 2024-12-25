from typing import Union

from fastapi import FastAPI
from fastapi import Request

app = FastAPI()

@app.get("/")
def read_root(req: Request):
    ip = req.client.host
    return {
        "Message": "Hello there",
        'Your IP': ip
    }
