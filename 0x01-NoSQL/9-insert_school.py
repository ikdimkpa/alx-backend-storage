#!/usr/bin/env python3
"""Create python function that inserts a new document
   in a collection based on kwargs
"""


def insert_school(mongo_collection, **kwargs):
    """
    Inserts a new document in a collection
    based on kwargs
    """
    inserted_doc = mongo_collection.insertOne(kwargs)
    return inserted_doc.Inserted_id
