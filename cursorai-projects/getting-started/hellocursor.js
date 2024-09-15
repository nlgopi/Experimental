const http = require('http');
const fs = require('fs');

const hostname = '127.0.0.1';
const port = 3000;

const html = `
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hello Cursor</title>
    <style>
        body {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-image: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" width="100" height="100" viewBox="0 0 100 100"><text x="50" y="50" font-size="80" text-anchor="middle" dominant-baseline="central" fill="rgba(200,200,200,0.1)">⌨️</text></svg>');
            background-repeat: repeat;
            background-color: #f0f0f0;
        }
        h1 {
            font-size: 3.5em;
            color: #333;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.1);
            animation: bounce 1s infinite alternate;
        }
        @keyframes bounce {
            from { transform: translateY(0px); }
            to { transform: translateY(-20px); }
        }
        input {
            margin-top: 20px;
            padding: 12px 20px;
            font-size: 1em;
            border: none;
            border-radius: 25px;
            background-color: rgba(255,255,255,0.8);
            box-shadow: 0 4px 6px rgba(0,0,0,0.1), 0 1px 3px rgba(0,0,0,0.08);
            transition: all 0.3s ease;
            width: 250px;
        }
        input:focus {
            outline: none;
            box-shadow: 0 6px 8px rgba(0,0,0,0.15), 0 1px 3px rgba(0,0,0,0.1);
            transform: translateY(-2px);
        }
        input::placeholder {
            color: #999;
        }
    </style>
</head>
<body>
    <h1>Hello Cursor</h1>
    <input type="text" placeholder="Type something...">
</body>
</html>
`;

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/html');
  res.end(html);
});

server.listen(port, hostname, () => {
  console.log(`Server running at http://127.0.0.1:3000/`);
});
