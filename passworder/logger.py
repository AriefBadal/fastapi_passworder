import logging


# Passworder logger
async def password_logger():
    # Configuration for the logger
    logging.basicConfig(
                        level=logging.INFO, filename="passworder.log",
                        filemode="w",
                        format="%(asctime)s - %(levelname)s - %(message)s")
    return logging.info('There was a new password request')
