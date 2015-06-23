sub sequence {
        my $str = $_[0];

        my @old = split('', $str);
        @old = sort({$a <=> $b} @old);
        #unique check..  LOLWUT?

        my $count = 0;
        my @new;
        push(@new, $old[0]);
        for(my $i = 1;$i <= $#old - 1;$i++) {
                my $next = $old[$i+1];
                my $curr = $old[$i];
                my $prev = $old[$i-1];

                if (($curr == $prev + 1) && ($curr == $next - 1)) {
                        if ($count == 0) {
                                $count++;
                                push(@new, '-');
                        }
                }
                else {
                        if ($count > 0) {
                                push(@new,$curr);
                                $count = 0;
                        }
                        else {
                                push(@new,',');
                                push(@new, $curr);
                        }
                }
        }

        my $last = $old[$#old];
        if ($count > 0) {
                push(@new,$last);
        }
        else {
                push(@new,',');
                push(@new,$last);
        }

        my $output = join('', @new);

#        my $output = join(',',sort({$a <=> $b} split('',$str)));

        return $output;
}