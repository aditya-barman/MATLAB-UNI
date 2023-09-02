function roots = quad_roots(a, b, c)
  % This function finds the solutions of the quadratic equation
  % ax^2 + bx + c = 0.

  % Calculate the discriminant.
  d = b^2 - 4*a*c;

  % If the discriminant is positive, then there are two roots.
  if d > 0
    roots = [(-b + sqrt(d)) / (2*a), (-b - sqrt(d)) / (2*a)];
  % If the discriminant is zero, then there is one root.
  elseif d == 0
    roots = [-b / (2*a)];
  % If the discriminant is negative, then there are no roots.
  else
    roots = [];
  end
end
