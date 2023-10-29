function getServers(m) {
    let servers = [];
    for (let times = 0; times < m; times++) {
        let q = lines[i++].split(' ').slice(1);
        servers.push(q);
    }
    return servers;
}

function getConnections(n, servers) {
    let connections = 0;
    for (let times = 0; times < n; times++) {
        let p = lines[i++].split(' ').slice(1);
        for (let server of servers) {
            if (p.some((app) => server.includes(app))) {
                connections++;
            }

        }
    }
    return connections;
}

let input = require('fs').readFileSync('/dev/stdin', 'utf-8');
var lines = input.split('\n');
var i = 0;
let [m, n] = lines[i++].split(' ').map(Number);
while (m > 0 && n > 0) {
    let servers = getServers(m);
    let connections = getConnections(n, servers);
    console.log(connections);
    [m, n] = lines[i++].split(' ').map(Number);
}
