#!/usr/bin/env python3
"""
Creates a function that returns the list of school
having a specific topic.
"""


def schools_by_topic(mongo_collection, topic):
    """Returns the list of school having a specific topic."""
    docs = mongo_collection.find({"topic": topic})
    
    return list(docs)
