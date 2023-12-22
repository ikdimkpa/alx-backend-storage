#!/usr/bin/env python3
"""
   Creates a Python function that returns all students
   sorted by average score
"""


def top_students(mongo_collection):
    """Returns all students sorted by average score"""
    topStudent = mongo_collection.aggregate([
            {
                "projects": {
                    "name": "$name",
                    "averageScore": {"$avg": "$topics.score"}
                    }
                },
            {"$sort": "$avgerageScore": -1}
    ])
