#!/bin/bash
mkdir ~/CIS
cd ~/CIS

mkdir ~/CIS/Tools
cd ~/CIS/Tools

git clone https://github.com/danielmiessler/SecLists.git

git clone https://github.com/lgandx/Responder.git

git clone https://github.com/fortra/impacket.git

mkdir BloodHoundAD
cd BloodHoundAD
git clone https://github.com/SpecterOps/BloodHound-Legacy.git
cd ..

mkdir SpecterOps
cd SpecterOps
git clone https://github.com/SpecterOps/BloodHound.git
cd ..

mkdir dirkjanm
cd dirkjanm
git clone https://github.com/dirkjanm/BloodHound.py.git
cd ..

git clone https://github.com/its-a-feature/Mythic.git

git clone https://github.com/BishopFox/sliver.git

mkdir GhostPack
cd GhostPack
curl "https://api.github.com/users/GhostPack/repos?per_page=1000" | grep -w clone_url | grep -o '[^"]\+://.\+.git' | xargs -L1 git clone
cd ..

git clone https://github.com/stephenbradshaw/vulnserver.git
