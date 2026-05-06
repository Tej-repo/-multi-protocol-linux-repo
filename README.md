# -multi-protocol-linux-repo
I built a centralized Linux repository server using HTTP, FTP, and NFS protocols. This solution enables offline package installation across multiple systems and improves deployment efficiency in restricted network environments. I also automated the setup using shell scripting.

**Architecture**
                 +----------------------+
                 |  Repository Server   |
                 | (RHEL / Rocky Linux) |
                 +----------+-----------+
                            |
        -------------------------------------------
        |                    |                    |
   +---------+         +---------+         +---------+
   | HTTP    |         | FTP     |         | NFS     |
   +---------+         +---------+         +---------+
        |                    |                    |
   -----------         -----------         -----------
   | Client1 |         | Client2 |         | Client3 |
   -----------         -----------         -----------
