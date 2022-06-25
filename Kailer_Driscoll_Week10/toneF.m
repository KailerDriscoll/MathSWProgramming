function w = toneF(fs,note,instrument)
%TONE2 Summary of this function goes here
%   Detailed explanation goes here

t = 1/fs:1/fs:note.duration;
w=0;

if length(note.semitone) == 1
    switch note.semitone
            case 'A'
                smt = 0;
            case 'A#'
                smt = 1;
            case 'B'
                smt = 2;
            case 'C'
                smt = 3;
            case 'C#'
                smt = 4;
            case 'D'
                smt = 5;
            case 'D#'
                smt = 6;
            case 'E'
                smt = 7;
            case 'F'
                smt = 8;
            case 'F#'
                smt = 9;
            case 'G'
                smt = 10;
            case 'G#'
                smt = 11;
            case '-1'
                w = zeros(size(t));
    end

        oct = note.octave;

        if note.semitone ~= '-1'

            f = 440*2^oct*2^(smt/12);
            f = round(f*note.duration)/note.duration;
            w = w+sin(2*pi*f*t);

            if nargin > 2 % If no instrument, skip this

                h = instrument.harmonics;
                for n=1:length(h)
                    w = w + h(n)*sin((1+n)*2*pi*f*t);
                end
                w = w * instrument.envelope(t);
            end

        end
else
    for m = 1:length(note.semitone)
        switch note.semitone{m}
            case 'A'
                smt = 0;
            case 'A#'
                smt = 1;
            case 'B'
                smt = 2;
            case 'C'
                smt = 3;
            case 'C#'
                smt = 4;
            case 'D'
                smt = 5;
            case 'D#'
                smt = 6;
            case 'E'
                smt = 7;
            case 'F'
                smt = 8;
            case 'F#'
                smt = 9;
            case 'G'
                smt = 10;
            case 'G#'
                smt = 11;
            case '-1'
                w = zeros(size(t));
        end

        oct = note.octave(m);

        if note.semitone{m} ~= '-1'

            f = 440*2^oct*2^(smt/12);
            f = round(f*note.duration)/note.duration;
            w = w+sin(2*pi*f*t);

            if nargin > 2 % If no instrument, skip this

                h = instrument.harmonics;
                for n=1:length(h)
                    w = w + h(n)*sin((1+n)*2*pi*f*t);
                end
                w(m) = w(m) * instrument.envelope(m);
            end

        end
    end
end
end

