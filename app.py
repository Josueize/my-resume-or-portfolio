from fastapi import FastAPI
from fastapi.responses import Response
import uvicorn

app = FastAPI()

@app.get("/")
def read_root():
    return {"message": "Hello FastAPI 🚀"}

# Fix favicon 404
@app.get("/favicon.ico")
def favicon():
    return Response(status_code=204)

if __name__ == "__main__":
    uvicorn.run(app, host="0.0.0.0", port=8000)