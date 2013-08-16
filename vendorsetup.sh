for combo in $(cat vendor/cmb/cmbtargets | awk {'print $1'})
do
    add_lunch_combo $combo
done
