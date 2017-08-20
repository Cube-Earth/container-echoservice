#!/bin/sh
while true
do
	nc -l 0.0.0.0 8080 << EOF
HTTP/1.1 200 OK
Content-Type: text/html

<html>
<style>
	th, td {
		font-family: Verdana;
		font-weight: normal;
		padding: 5 10 5 10;
		text-align: left;
		font-size: 0.8em;
	}

	th {
		background-color: #b3d1ff;
	}

	td {
		background-color: #e6f0ff;
	}
</style>
<body><table>
<tr><th>Now</td><td>$(date '+%Y-%m-%d %H:%M:%S')</td></tr>
<tr><th>Container Name</td><td>$(hostname)</td></tr>
</table></body></html>
EOF
done