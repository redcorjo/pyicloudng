# Generated using pyarchetype template
# pip install pyarchetype
# git clone https://github.com/redcorjo/pyarchetype.git
import logging, os
import app

level = os.getenv("LOGGER", "INFO")
logging.basicConfig(level=level)
logger = logging.getLogger(__name__)

def main():
    logger.debug("Main")
    
if __name__ == "__main__":
    main()
