# import tensorflow as tf

REGISTRY = {}

# from tf.compat.v1.data.experimental import StatsAggregator as SC2StatsAggregator
from envs.starcraft2.starcraft2_2pairs import StatsAggregator as SC2StatsAggregator
# REGISTRY["sc2"] = tf.compat.v1.data.experimental.StatsAggregator
REGISTRY["sc2"] = SC2StatsAggregator
