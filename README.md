# Using Jax with Gradient

## Getting started:

To set up a Jax capable notebook on Gradient, first login and go to the create notebook page and select a GPU. (Check out more information about our free GPU availability at [Gradient.Run!](https://gradient.run))

Scroll down to the advanced options, and click the toggle to expose the advanced options menu.

In the top space labeled "Workspace URL", paste the link to this repo:

`https://github.com/gradient-ai/jax-gradient`

In the section below, paste the following into the space labeled container name:

`jameshskelton/jax_paperspace:latest`

This will create your instance with the startup notebooks for Jax in a container configured to run with Gradient. It also comes pre installed with tensorflow and matplotlib

## Important

Before running a Jax GPU dependent task on a Gradient Notebook, you must first run an `nvidia-smi` command in the terminal or using line magic in one of the cells. This will enable Jax to detect and use the GPU(s).
