# == VARIABLES ==
# VALUES_DIR=

# == Fulfillment Helm values flags ==
VALUES_FLAGS=""
for file in "$VALUES_DIR"/*; do
    if [ -f "$file" ]; then
      VALUES_FLAGS="$VALUES_FLAGS --values $file"
    fi
done

echo "$VALUES_FLAGS"
