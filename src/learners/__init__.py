REGISTRY = {}

from .basic import BasicLearner
REGISTRY["basic"] = BasicLearner

from .mackrl import MACKRLLearner
REGISTRY["mackrl"] = MACKRLLearner

from .centralV import CentralVLearner
REGISTRY["centralV"] = CentralVLearner