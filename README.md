# Using Jax with Gradient

## Getting started:

To set up a Jax capable notebook on Gradient, first login and go to the create notebook page and select a GPU. (Check out more information about our free GPU availability at [Gradient.Run!](https://gradient.run))

Scroll down to the advanced options, and click the toggle to expose the advanced options menu.

In the top space labeled "Workspace URL", paste the link to this repo:

`https://github.com/gradient-ai/jax-gradient`

In the section below, paste the following into the space labeled Container Name:

`cwetherill/jax:latest`

Finally, for the Container Command, enter the following:

`jupyter notebook --allow-root --ip=0.0.0.0 --no-browser --NotebookApp.trust_xheaders=True --NotebookApp.disable_check_xsrf=False --NotebookApp.allow_remote_access=True --NotebookApp.allow_origin='*' --LabApp.kernel_manager_class=notebook.services.kernels.kernelmanager.AsyncMappingKernelManager`

This will create your instance with the startup notebooks for Jax in a container configured to run with Gradient. It also comes pre installed with tensorflow and matplotlib

### For more information about Jax, go to https://github.com/google/jax
