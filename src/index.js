const {createServer} = require("http");
const host = 'localhost';
const port = 8000;
const requestListener = function (req, res) {
    res.writeHead(200);
    res.end("My server!");
};

const server = createServer(requestListener);
server.listen(port, () => {
    console.log(`Server is running on http://${host}:${port}`);
});