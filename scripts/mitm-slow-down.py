# mitmweb --set web_port=8082 --ssl-insecure -s ~/dev/laptop/scripts/mitm-slow-down.py

from mitmproxy import http
from time import sleep
from urllib.parse import urlparse

def delay_before_streaming_response(flow):
    url = urlparse(flow.request.url)
    if url.path.lower().endswith('graphql'):
        return 2
    return 0

def responseheaders(flow):
    def modify(chunks):
        sleep(delay_before_streaming_response(flow))
        # continue to stream original response
        yield from chunks
    flow.response.stream = modify
