set -u -e -o pipefail

./tools/work-arounds/jsrsasign.sh fix


NPM_PACKAGE_LABELS=`bazel query --output=label 'kind(".*_package", //libs/...)'`
bazel build $NPM_PACKAGE_LABELS

for packageLabel in $NPM_PACKAGE_LABELS; do
  echo "publishing $packageLabel"
#   bazel run -- ${packageLabel}.publish --access public --tag latest
done

./tools/work-arounds/jsrsasign.sh undo