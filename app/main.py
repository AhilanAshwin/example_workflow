from fastapi import FastAPI

app = FastAPI(title="Fast API App")


@app.get("/", status_code=200)
def get_index():
    return {'title': 'Hello World', 'author': "Ahilan Ashwin", 'version': "0.0.1"}


@app.get('/ping', status_code=200)
def healthcheck():
    return {'status': "Success"}


if __name__ == '__main__':
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8000, log_level="debug")
