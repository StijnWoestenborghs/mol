# Inspired by numpy upload wheels
# https://github.com/numpy/numpy/blob/main/tools/wheels/upload_wheels.sh

set_upload_vars() {
    echo "IS_PUSH: $IS_PUSH"
    echo "IS_SCHEDULE_DISPATCH: $IS_SCHEDULE_DISPATCH"
    if [ "$IS_PUSH" = "true" ]; then
        echo push and tag event
        export UPLOAD_REGISTRY="dev"
        export TOKEN=$PYPI_UPLOAD_TOKEN
        export WHL_UPLOAD="true"
    elif [ "$IS_SCHEDULE_DISPATCH" = "true" ]; then
        echo scheduled or dispatched event
        export UPLOAD_REGISTRY="nightly"
        export TOKEN=$PYPI_UPLOAD_TOKEN
        export WHL_UPLOAD="true"
    else
        echo non-dispatch event
    fi
}

upload_wheels() {
    echo ${PWD}
    if [[ ${WHL_UPLOAD} == true ]]; then
        if [ -z ${TOKEN} ]; then
            echo no token set, not uploading
        else
            if compgen -G "./wheelhouse/*.whl"; then
                echo "Found wheel"
                # Force a replacement if the remote file already exists -
                # nightlies will not have the commit ID in the filename, so
                # are named the same (1.X.Y.dev0-<platform/interpreter-tags>)
                echo "Uploading wheel to ${UPLOAD_REGISTRY}"
                uv publish --token ${TOKEN} upload ./wheelhouse/*.whl
            else
                echo "Files do not exist"
                return 1
            fi
        fi
    fi
}