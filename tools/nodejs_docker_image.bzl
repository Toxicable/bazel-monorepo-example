load("@io_bazel_rules_docker//nodejs:image.bzl", "nodejs_image")
load("@io_bazel_rules_docker//container:container.bzl", "container_image", "container_push")


def docker_nodejs_image(
    name,
    node_modules,
    entry_point,
    data = [],
    ports = [],
    **kwargs):

    nodejs_image_name = name + ".nodejs_image"

    nodejs_image(
        name = nodejs_image_name,
        entry_point = entry_point,
        # This will be put into its own layer.
        node_modules = node_modules,
        data = data,
    )

    container_image(
        name = name,
        base = nodejs_image_name,
        ports = ports,
    )

def docker_push_group(
    name,
    image,
    registry,
    repository,
    tags = [],
    **kwargs):

    count = 0

    for tag in tags:
        container_push(
            name = name + "." + str(count),
            image = image,
            format = "Docker",
            registry = registry,
            repository = repository,
            stamp = True,
            tag = tags[count],
            **kwargs
        )
        count = count +1
