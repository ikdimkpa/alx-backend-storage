#!/usr/bin/env python3
"""
    Store an instance of the Redis client as a private variable named _redis
    (using redis.Redis()) and flush the instance using flushdb.
"""
import redis
from typing import Union
import uuid


class Cache:
    """Creates Cache class"""
    def __init__(self,):
        """Initializes the cash instance"""
        self._redis = redis.Redis()
        self._redis.flushdb(True)

    def store(self, data: Union[str, bytes, int, float]) -> str:
        """
            enerate a random key (e.g. using uuid), store the input data
            in Redis using the random key and return the key.
        """
        key = str(uuid.uuid4())
        self._redis.set(key, data)
        return key

    def get(self, key: str, fn: callable = None) -> Union[str, int, bytes, float]:
        """Converts the data back to the desired format."""
        self._redis.get(key)
        if key is not None:
            return fn(key)
        else:
            return data

    def get_str(self, key: str) -> str:
        """Takes in data and converts to string"""
