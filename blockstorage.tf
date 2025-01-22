

resource "digitalocean_volume" "backend-volume-101" {
  name = "backend-volume-101"
  region = var.region
  size = 50 # its is in gbs
  tags = [ "data" ]
}


resource "digitalocean_volume_attachment" "backend-volume-attach-101" {
  volume_id = digitalocean_volume.backend-volume-101.id
  droplet_id = digitalocean_droplet.backend-101.id
}





# #### Next Steps for Your Droplet:
# 1. SSH into your Droplet:
#    ```bash
#    ssh root@<your_droplet_ip>
#    ```
# 2. Format the attached volume (if it’s not formatted already):
#    ```bash
#    mkfs.ext4 /dev/disk/by-id/scsi-0DO_Volume_web-data-volume
#    ```
# 3. Mount the volume to a directory (e.g., `/mnt/data`):
#    ```bash
#    mkdir -p /mnt/data
#    mount /dev/disk/by-id/scsi-0DO_Volume_web-data-volume /mnt/data
#    ```
# 4. Add the volume to `/etc/fstab` for persistence:
#    ```bash
#    echo '/dev/disk/by-id/scsi-0DO_Volume_web-data-volume /mnt/data ext4 defaults,nofail 0 2' >> /etc/fstab
#    ```
