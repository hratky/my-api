from fastapi import FastAPI

app = FastAPI()

@app.get('/')
def home():
    return {"msg": "Ahoj z FastAPI!"}

@app.get('/nic')
def home2():
    return {"msg": "Nic!"}
