% Verify that the content in each cell meet a certain requirement.
function mustAllBe(c, requirement)
arguments
    c               cell
    requirement
end
    for i = 1 : numel(c)
        if ~requirement(c{i})
            eid = 'NotMeetingRequirement';
            msg = 'Cell contains at leanst one element (at index' + num2str(i) + 'that does not meet the requirement';
            throwAsCaller(MException(['InvalidArgument:' eid], msg));
        end
    end
end