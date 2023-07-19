import sys
import json
# Create a basic HTTP server that server always the same content
from http.server import HTTPServer, BaseHTTPRequestHandler

class InstructionWasm(BaseHTTPRequestHandler):
    def do_GET(self):
        # Separate in three urls: index, wasm, report
        if self.path == '/':
            self.send_response(200)
            self.end_headers()
            # Read the index.html and return it
            with open('index.html', 'rb') as f:
                self.wfile.write(f.read())
            return
        if self.path == '/wasm':

            # get the two parameters: number of instructions and the instruction type
            # e.g. http://localhost:8080/?instructions=1000&type=i32.const.42
            instructions = self.path.split('?')[1].split('&')[0].split('=')[1]
            instruction_type = self.path.split('?')[1].split('&')[1].split('=')[1]

            # Now we build the Wasm file
            # Read the template

            # Split by lines, insert the instructions and join again

            # Return the file

            self.send_response(200)
            self.end_headers()
            self.wfile.write(b'Hello world')
            return
        if self.path == '/report':
            # Read the data as a json coming from the body of the POST request
            # e.g. [ 100, 200, 300 ]
            body = self.rfile.read(int(self.headers['Content-Length']))
            # turn to a json
            jsondata = json.loads(body)
            print(jsondata)
            # Save the data in a file
            # The name of the file comes as an url parameter
            name = self.path.split('?')[1].split('=')[1]
            with open(name, 'w') as f:
                f.write(json.dumps(jsondata))
            # Return a 200
            self.send_response(200)
            self.end_headers()
            self.wfile.write(b'Done')
            return

if __name__ == '__main__':
    # start the server
    server = HTTPServer(('localhost', 8080), InstructionWasm)