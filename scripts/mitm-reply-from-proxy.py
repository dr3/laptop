# mitmweb --set web_port=8082 --ssl-insecure -s ~/dev/laptop/scripts/mitm-reply-from-proxy.py

"""Send a reply from the proxy without sending the request to the remote server."""
from mitmproxy import http


def request(flow: http.HTTPFlow) -> None:
    if flow.request.pretty_url == "https://google.com/banana":
        flow.response = http.Response.make(
            404,  # (optional) status code
            b"{}",  # (optional) content
            {"Content-Type": "application/json"},  # (optional) headers
        )
