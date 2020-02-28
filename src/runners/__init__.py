REGISTRY = {}

from .nstep_runner import NStepRunner
REGISTRY["nstep"] = NStepRunner

from .flounderl_runner import MACKRLRunner
REGISTRY["mackrl"] = MACKRLRunner