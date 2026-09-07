FROM ghcr.io/element-hq/synapse:v1.160.0

# Synapse v1.160.0 + PR #20078 (speed up the room hierarchy endpoints)
# Cherry-picked onto v1.160.0; files land on the exact same paths as in the upstream image.
COPY synapse/handlers/room_summary.py /usr/local/lib/python3.13/site-packages/synapse/handlers/room_summary.py
COPY synapse/storage/_base.py /usr/local/lib/python3.13/site-packages/synapse/storage/_base.py
COPY synapse/storage/databases/main/cache.py /usr/local/lib/python3.13/site-packages/synapse/storage/databases/main/cache.py
COPY synapse/storage/databases/main/room.py /usr/local/lib/python3.13/site-packages/synapse/storage/databases/main/room.py
COPY synapse/storage/databases/main/state.py /usr/local/lib/python3.13/site-packages/synapse/storage/databases/main/state.py
COPY synapse/storage/databases/main/stats.py /usr/local/lib/python3.13/site-packages/synapse/storage/databases/main/stats.py