import psutil
import time

for proc in psutil.process_iter(['pid', 'name']):
    print(proc.info)

def get_bytes():
    net_io_counters = psutil.net_io_counters()
    bytes_sent = net_io_counters.bytes_sent
    bytes_recv = net_io_counters.bytes_recv
    return bytes_sent, bytes_recv

bytes_sent_start, bytes_recv_start = get_bytes()

cpu_percent = psutil.cpu_percent()

memory = psutil.virtual_memory()
mem_used_percent = memory.percent
mem_used = round(memory.used / (1024*1024), 2)
mem_total = round(memory.total / (1024*1024), 2)

disk_usage = psutil.disk_usage('/')
disk_used_percent = disk_usage.percent
disk_used = round(disk_usage.used / (1024*1024*1024), 2)
disk_total = round(disk_usage.total / (1024*1024*1024), 2)

print(f"CPU Usage: {cpu_percent}%")
print(f"Memory Usage: {mem_used_percent}% ({mem_used} MB used / {mem_total} MB total)")
print(f"Disk Usage: {disk_used_percent}% ({disk_used} GB used / {disk_total} GB total)")

connections = psutil.net_connections()

for conn in connections:
    print(conn)

while True:
    time.sleep(1)

    bytes_sent_end, bytes_recv_end = get_bytes()

    bytes_sent_diff = bytes_sent_end - bytes_sent_start
    bytes_recv_diff = bytes_recv_end - bytes_recv_start

    speed_sent = 8 * bytes_sent_diff / 1.0
    speed_recv = 8 * bytes_recv_diff / 1.0

    print(f"Sent: {speed_sent:.2f} bps | Received: {speed_recv:.2f} bps")

    bytes_sent_start, bytes_recv_start = bytes_sent_end, bytes_recv_end
