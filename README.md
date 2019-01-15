# Boot Raspberry Pi Zero without SD card over USB

1. Clone the repository onto your system by:
  ```
  cd $HOME
  git clone https://github.com/alokkesari/PiZero
  ```

2. Migrate inside the PiZero directory.
  ```
  sudo chmod a+x -R PiZero
  cd PiZero
  ```

3. Run the following command to install the required dependencies and/or boot the Raspberry Pi.
  ```
  sudo ./run.sh
  ```

## Note:

* By default, the PiZero boot image will make the Pi to blink an LED, if connected to GPIO20.

* The PiZero can be made to do other things by making changes to the *main.c* file, and running the command mentioned in the Step 3 above.

* For more knowledge about the various functionalities and to target the addresses which refer to these functionalities, refer to the datasheet provided by Broadcom/Raspberry.

* Follow the terminal text while running the *run.sh* for knowing the idea/working behind this.

> *Contact ARK for doubts, queries, suggestions, etc., at arkesari@iith.ac.in or alok.kesari@yahoo.co.in.*
