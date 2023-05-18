# Syncopated Linux

## Overview

This project focuses on utilizing Ansible, an open-source configuration management and task automation tool, to streamline an audio production workflow. The target environment consists of Linux-based devices running Free and Open-Source Software (FOSS) applications.

## Purpose

The purpose of this project is to automate and standardize the configuration of various components involved in an audio production workflow. By using Ansible, we aim to simplify the setup process, ensure consistency across different devices, and enhance productivity for audio professionals working in a Linux environment.

This project is designed with compatibility for older hardware in mind. By implementing a resource-efficient configuration, utilizing lightweight components, applying optimization techniques, and conducting thorough hardware compatibility testing, the project aims to provide an optimized audio production workflow that can run effectively on both older and newers hardware. This enables users to leverage real-time audio processing capabilities and enjoy a streamlined and productive audio production experience.

## Features

### Configuration Management:
Ansible allows us to define and manage the desired state of the audio production environment. This includes configuring software applications, system settings, and network parameters.

### Task Automation:
With Ansible's versatile automation capabilities, we can automate routine tasks involved in the audio production workflow. This includes launching applications, setting up project templates, managing audio file conversions, installing plugins and more.

### Scalability and Flexibility:
Ansible's modular architecture enables scalability, making it suitable for both small-scale and large-scale audio production setups. Additionally, its flexibility allows for easy customization and adaptation to specific requirements.

### Real-Time Optimization:
To optimize the OS for real-time audio using Ansible, the following steps are typically involved:

- **User and Group Configuration**: The user is added to the "audio" group, ensuring appropriate permissions for accessing audio-related resources.

- **Security and Resource Limits**: A configuration file is copied to set real-time priority (rtprio), memory locking (memlock), and nice values for the audio group. These settings help prioritize audio processing and ensure resources are allocated effectively.

- **Timer Permissions**: Assigns appropriate permissions for system timers (rtc0 and hpet) to the "audio" group in the udev rules configuration.

- **Tuned Service (optional)**: The "tuned" service is disabled, which can be useful for fine-tuning system settings based on specific performance profiles. The installation of a modified "realtime" profile is also performed, enabling further optimizations.

- **RTIRQ and RTKit Configuration**: The RTIRQ defaults file is copied to configure real-time IRQ thread priorities, improving the handling of audio-related interrupts. The RTKit configuration file and systemd service file are installed, providing a framework for managing real-time tasks and resource allocations.

- **CPU Power Management**: The default configuration file for CPU power management (cpupower) is templated, allowing customization of CPU frequency scaling and power-saving settings. The cpupower service is enabled, ensuring that the configured power management settings are applied. This task is skipped for QEMU-based systems.

- **IRQ Balance Service**: The irqbalance service is disabled to prevent automatic IRQ balancing, which can interfere with real-time audio processing.

- **System Control Parameters (sysctl)**: A configuration file is copied to set sysctl parameters, which allow fine-grained control over various system settings related to real-time audio performance.

Sysctl configurations can have a direct impact on audio quality and performance. Here's how each configuration relates to audio:

- **Swappiness**: By reducing the kernel's tendency to swap, a lower swappiness value (30) ensures that audio data remains in memory, minimizing delays caused by disk I/O and improving overall responsiveness during audio processing.

- **VFS Cache Pressure**: A lower value (50) for vfs_cache_pressure helps retain directory and inode objects in the VFS cache, which can enhance the performance of file access operations in audio applications, such as reading and loading audio files.

- **Dirty Ratio and Background Ratio**: By setting lower values (3 and 5, respectively), the kernel writes out dirty data more promptly. This ensures that audio data and buffers are written to disk without significant delay, reducing the chances of audio glitches or dropouts.

- **Page-Cluster**: Disabling the page-cluster behavior (value of 0) can be beneficial for audio workloads. It prevents unnecessary read-ahead operations from swap space, minimizing disk activity and potential latency issues during audio streaming or real-time processing.

- **Max Map Count**: Increasing the maximum number of memory map areas (16777216) allows audio applications to utilize more memory efficiently, accommodating large sound libraries, plugins, and virtual instruments.

- **Real-Time Scheduling and HPET Frequency**: Configurations related to real-time scheduling and HPET frequency can enhance the precision and accuracy of time-sensitive audio operations, such as real-time synthesis, audio processing with low-latency requirements, and synchronization of audio streams.

Optimizing these sysctl configurations for audio-related tasks helps ensure that the system maintains stable performance, reduces audio latency, minimizes audio artifacts, and provides a smooth and uninterrupted audio experience.



### Workflow Enhancement with i3 Window Manager:

To further enhance the audio production workflow, this project incorporates the usage of the i3 window manager. i3 is a dynamic tiling window manager known for its efficiency, flexibility, and keyboard-driven interface. By integrating i3 into the audio production environment, users can experience improved multitasking, efficient window management, and streamlined navigation.

The integration of i3 window manager offers several advantages for optimizing the audio production workflow:

- **Efficient Space Utilization**: i3's tiling approach automatically arranges windows in a non-overlapping manner, maximizing screen space utilization. For example, the DAW can be assigned a fullscreen workspace, while the mixer controls and audio plugins can be arranged in a horizontal or vertical split layout. This ensures that essential applications are readily accessible

- **Keyboard-Centric Workflow**: i3 is designed to be controlled primarily through keyboard shortcuts, allowing users to perform various actions quickly and efficiently. By eliminating the need for constant mouse movement and clicking, audio professionals can navigate between applications, switch workspaces, and manage windows effortlessly, resulting in increased productivity and a smoother workflow.

- **Workspace Management**: i3 provides a flexible workspace management system, allowing users to create multiple virtual workspaces that can be dedicated to specific tasks or projects. Each workspace can contain different application windows, providing a clean and organized environment for audio production activities. Switching between workspaces is seamless, enabling users to focus on specific tasks without distractions.

- **Customization and Scriptability**: i3 offers extensive customization options, allowing users to personalize their window manager according to their preferences. Users can define keybindings, configure window behavior, and create scripts to automate common tasks, further streamlining the audio production workflow and adapting the window manager to specific needs.

- **Keybindings and Shortcuts**: Users can configure custom keybindings to perform common actions, such as launching applications, switching between workspaces, resizing windows, or controlling audio playback. These keybindings can be tailored to individual preferences, making the workflow faster and more intuitive.

- **Workspace Organization**: By utilizing i3's workspace management capabilities, users can assign specific workspaces for different stages of the audio production workflow. For instance, one workspace can be dedicated to composing and arranging, while another focuses on mixing and mastering. This allows for a smooth transition between tasks and reduces clutter.

By incorporating the i3 window manager into the audio production workflow, users can benefit from efficient space utilization, a keyboard-centric approach, optimized workspace management, and extensive customization options.

### Resource-Efficient Configuration:

To ensure compatibility and performance on older hardware, the project conducts thorough testing and validation on a range of hardware configurations. By testing the project on various older machines with different specifications, any compatibility issues or performance bottlenecks can be identified and addressed. This testing process helps fine-tune the configurations and optimizations specifically for older hardware setups, ensuring a smooth and efficient audio production experience.

# Featured Software

### Networked Audio

[Ray Session](https://github.com/Houston4444/RaySession): A powerful session manager for audio applications, allowing you to control and manage multiple applications from a single interface.

[JackTrip](https://www.jacktrip.com/): An application that enables high-quality, low-latency audio streaming over the internet.

[qmidinet](https://qmidinet.sourceforge.io/): A MIDI Network Gateway via UDP/IP Multicast, designed for use in studio or stage environments.

[touchosc](https://hexler.net/touchosc): A modular OSC and MIDI control surface for iPhone, iPod Touch, and iPad by hexler.

### Sound Filters and Effects
> [zita-lrx](https://manpages.ubuntu.com/manpages/xenial/man1/zita-lrx.1.html): A simple and easy-to-use 2x2x2 (stereo to stereo) cross-over network.

> [zita-mu1](https://kokkinizita.linuxaudio.org/linuxaudio/zita-mu1-doc/quickguide.html): A stereo to mono upmixer, useful for checking mono compatibility.

> [zita-rev1](https://kokkinizita.linuxaudio.org/linuxaudio/zita-rev1-doc/quickguide.html): A reverb audio plugin, designed to produce a natural sounding room reverberation effect.

> [x42-plugins](http://x42-plugins.com/x42/): A collection of free audio plugins, including equalizers, compressors, and more.

> [swh-plugins](http://plugin.org.uk/ladspa-swh/docs/ladspa-swh.html): is a collection of LADSPA (Linux Audio Developer's Simple Plugin API) plugins. The collection includes a wide range of plugins, including filters, reverb, delay, distortion, and many others.

> [iem ambisonics](https://plugins.iem.at/): A free and open-source audio plugin suite that includes Ambisonic plugins up to the 7th order.

### Mixers and Patch Panel
> [reaper](https://reaper.fm): A digital audio workstation and MIDI sequencer

> [non-mixer](http://non.tuxfamily.org/wiki/Non%20Mixer): A modular Digital Audio Mixer

> [patchage](https://drobilla.net/software/patchage.html): A modular patch bay for audio and MIDI systems based on Jack and Alsa.

### IDE
> [pulsar](https://pulsar-edit.dev/)

> [sonic-pi](https://sonic-pi.net/): A code-based music creation and performance tool. It allows you to learn to code creatively by composing or performing music in an incredible range of styles from classical to algorave.

> [bipscript](http://bipscript.org): A scripting language for interactive music. Features include APIs for audio plugin hosting, MIDI sequencing and OSC control.

### Synths
> [helm](https://tytel.org/helm/): A software synthesizer that lets you create all sorts of awesome sounds. It's free to use and it's open-source, so you can tinker with it and see how it all works.

> [vital](https://vital.audio/): A spectral warping wavetable synthesizer that allows you to create complex, evolving sounds with an easy-to-use interface.

> [AlsaModularSynth](https://alsamodular.sourceforge.net/)

### Sequencers
> [qmidiarp](https://qmidiarp.sourceforge.net/): A MIDI arpeggiator, sequencer and LFO for ALSA. It provides arpeggiator, sequencer and LFO modules, which can be synchronized to a MIDI clock.

> [seq192](https://github.com/jean-emmanuel/seq192): Pattern-based sequencer

> [non-sequencer](http://non.tuxfamily.org/wiki/index.php?page=Non%20Sequencer): Pattern-based sequencer

> [hydrogen](http://hydrogen-music.org/): Pattern-based sequencer

### Soundfont Audio Samplers
> [linuxsampler](https://www.linuxsampler.org/): A professional grade software audio sampler that aims to deliver performance and features at par with hardware sampler devices.

> [sfizz](https://sfz.tools/sfizz/)

> [polyphone](https://www.polyphone-soundfonts.com/) SoundFont editor

> [swami](http://www.swamiproject.org/): SoundFont editor

> [sooperlooper](http://sonosaurus.com/sooperlooper/): A live looping sampler capable of immediate loop recording, overdubbing, multiplying, reversing and more. It allows for multiple simultaneous multi-channel loops limited only by your computer's available memory.

### Record and Edit
> [audacity](https://www.audacityteam.org/): An easy-to-use, multi-track audio editor

> [ocenaudio](https://www.ocenaudio.com/): A cross-platform, easy to use, fast and functional audio editor.

> [timemachine](http://plugin.org.uk/timemachine/): " I used to always keep a minidisc recorder in my studio running in a mode where when you pressed record it wrote the last 10 seconds of audio to the disk and then caught up to realtime and kept recording. The recorder died and haven't been able to replace it, so this is a simple jack app to do the same job. It has the advantage that it never clips and can be wired to any part of the jack graph. The idea is that I doodle away with whatever is kicking around in my studio and when I heard an interesting noise, I'd press record and capture it, without having to try and recreate it. :)""



### Signal Analysis
> [fmit](https://gillesdegottex.github.io/fmit/ss.html): a graphical utility for tuning your musical instruments, with error and volume history and advanced features.

> [Jaaa (JACK and ALSA Audio Analyser)](http://kokkinizita.linuxaudio.org/linuxaudio/jaaa-pict.html): An audio signal generator and spectrum analyser designed to make accurate measurements.


> [Japa (JACK and ALSA Perceptual Analyser)](http://kokkinizita.linuxaudio.org/linuxaudio/japa-pict.html): A 'perceptual' or 'psychoacoustic' audio spectrum analyser. In contrast to JAAA, this is more an acoustical or musical tool than a purely technical one. Possible uses include spectrum monitoring while mixing or mastering, evaluation of ambient noise, and (using pink noise), equalisation of PA systems.

> [baudline](https://www.baudline.com/): A time frequency browser designed for spectrum analysis data visualization.

> [tony](https://www.sonicvisualiser.org/tony/): Designed for high quality pitch and note transcription for scientific applications. It is designed primarily for use with solo vocal recordings.

> [sonic-visualizer](https://www.sonicvisualiser.org/): Designed for musicologists, archivists, signal-processing researchers, and anyone else looking for a friendly way to look at what lies inside the audio file.

> [sonic annotator](https://vamp-plugins.org/sonic-annotator/): A batch tool for feature extraction and annotation of audio files using Vamp plugins.


### Sample Management
> [deadbeef](https://deadbeef.sourceforge.io/): A customizable modular cross-platform audio player

> [mixxx](mixxx.org): Integrates the tools DJs need to perform creative live mixes with digital music files.

> [sononym](https://www.sononym.net/): Sample discovery, similarity search, duplicate detection, organizing, and exporting. Uses of machine learning to categorize samples.

### and more!

> [lsmi](https://lsmi-all.sourceforge.net/): Use homemade, repurposed, or commercial devices as MIDI controllers, even if the devices themselves don't have the capability to generate MIDI messages.

> [AntimicroX](https://antimicrox.github.io/)

> [njconnect](https://sourceforge.net/projects/njconnect/): Curses Jack connection manager

> [jack_mixer](https://rdio.space/jackmixer/): Audio mixer with a look similar to its hardware counterpart

> [Calf Studio](https://calf-studio-gear.org/)

> [Dragonfly Reverb](https://michaelwillis.github.io/dragonfly-reverb/): A bundle of reverb plugins

> [ingen](http://drobilla.net/software/ingen.html): A modular audio processing system for Jack and LV2 based systems.


# Contributions
Contributions to this audio production workflow configuration project are welcome. If you encounter issues, have suggestions for improvements, or would like to add new features, please submit a pull request on our GitHub repository.

# License
This project is licensed under the MIT License. See the LICENSE file for more details.

# Acknowledgments
We would like to express our gratitude to the open-source community for developing and maintaining the FOSS applications used in this audio production workflow. Their dedication and contributions have been instrumental in creating a powerful and flexible environment for audio professionals.
