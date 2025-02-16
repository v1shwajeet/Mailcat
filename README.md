# Mailcat - Email Discovery Tool

Mailcat is an OSINT tool that helps discover email addresses associated with a username across various providers.

## Prerequisites

- Docker installed on your system
- [Install Docker for Windows](https://docs.docker.com/desktop/install/windows-install/)
- [Install Docker for Mac](https://docs.docker.com/desktop/install/mac-install/)
- [Install Docker for Linux](https://docs.docker.com/engine/install/)

## Quick Start with Docker

1. Clone the repository:
```bash
git clone https://github.com/yourusername/mailcat.git
cd mailcat
```

2. Build the Docker image:
```bash
docker build -t mailcat .
```

3. Run Mailcat:
```bash
docker run mailcat <username>
```

For example:
```bash
docker run mailcat johndoe
```

## Usage Options

### Basic Usage
```bash
docker run mailcat <username>
```

### Verbose Output
Shows detailed progress and findings:
```bash
docker run mailcat -v <username>
```

### Specific Providers
Check username on specific email providers:
```bash
docker run mailcat -p gmail -p yahoo <username>
```

### All Available Options
To see all available options:
```bash
docker run mailcat --help
```

## Common Issues and Solutions

1. **If Chromium Download is Slow:**
- The first run will download Chromium (around 183MB)
- This is a one-time process
- Subsequent runs will be faster

2. **If you see Event Loop Warnings:**
```
RuntimeWarning: Enable tracemalloc to get the object allocation traceback
```
These warnings can be safely ignored as they don't affect the functionality.

3. **If Docker Build Fails:**
- Ensure you have a stable internet connection
- Try running with admin/sudo privileges
- Make sure Docker daemon is running

## Supported Email Providers

- Gmail
- Yahoo
- Outlook
- UkrNet
- And many more email providers

## Example Output

When running the tool, you'll see output similar to this:
```
                ,-.                    ^
                ( (        _,---._ __  / \
                ) )    .-'       `./ /   \
                ( (   ,'            `/    /:
                \ `-"             \''\   / |
                .              ,  \ \ /  |
                / @          ,'-`----Y   |
                (            ;        :   :
                |  .-.   _,-'         |  /
                |  | (  (             | /
                )  (  \  `.___________:/
                `..'   `--' :mailcat:

Google: 
* username@gmail.com
```

## Notes

- The first run may take longer due to Chromium download
- Each scan typically takes a few seconds to complete
- The tool respects rate limits and terms of service of email providers
- Some warnings about event loops and Chrome processes during cleanup are normal and don't affect results

## Contributing

Feel free to open issues or submit pull requests if you want to improve the tool.

## Supported providers

Total 37 providers, > 170 domains and > 100 aliases.

| Name                | Domains                                | Method            |
| ------------------- | -------------------------------------- | ----------------- |
| Gmail               | gmail.com                              | SMTP              |
| Yandex              | yandex.ru + 5 aliases                  | SMTP              |
| Protonmail          | protonmail.com + 2 aliases             | API               |
| iCloud              | icloud.com, me.com, mac.com            | Access recovery   |
| MailRu              | mail.ru + 4 other domains              | Registration      |
| Rambler             | rambler.ru + 5 other domains           | Registration      |
| Tutanota            | tutanota.com + 4 other domains         | Registration      |
| Yahoo               | yahoo.com                              | Registration      |
| Outlook             | outlook.com, hotmail.com               | Registration      |
| Zoho                | zohomail.com                           | Registration      |
| Lycos               | lycos.com                              | Registration      |
| Eclipso             | eclipso.eu + 9 other domains           | Registration      |
| Posteo              | posteo.net + 50 aliases                | Registration      |
| Mailbox.org         | mailbox.org                            | Registration      |
| Firemail            | firemail.de + 2 other domains          | Registration      |
| Fastmail            | fastmail.com                           | Registration      |
| StartMail           | startmail.com                          | Registration      |
| KOLABNOW            | kolabnow.com + 23 aliases              | Registration      |
| bigmir)net          | i.ua, ua.fm, email.ua                  | Registration      |
| Xmail               | xmail.net                              | Registration      |
| Ukrnet              | ukr.net                                | Registration      |
| Runbox              | runbox.com + 30 other domains          | Registration      |
| DuckGo              | duck.com                               | Registration      | 
| HushMail            | hushmail.com + 5 other domains         | Registration      |
| CTemplar            | ctemplar.com                           | Registration      |
| emailn              | emailn.de                              | Registration      |
| aikq                | aikq.de + 40 other domains             | Registration      |
| Vivaldi             | vivaldi.net                            | Registration      |
| mailDe              | mail.de                                | SMTP              |
| Wirtualna Polska    | wp.pl                                  | Registration      |
| Gazeta.pl           | gazeta.pl                              | Registration      |
| int.pl              | int.pl                                 | Registration      |
| O2                  | o2.pl                                  | Registration      |
| Interia             | interia.pl + 10 other domains          | Password recovery |
| t.pl                | t.pl + 8 other domains                 | Registration      |
| onet.pl             | onet.pl + 11 other domains & 4 aliases | Registration      |


<!-- ## License

[Your License Information] -->