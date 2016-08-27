def solution(a)
  elem = 0
  result = 0
  i = 0
  length = a.length
  while i < length do
    elem = a[result]
    if elem >= 0 && elem < length
      if a[elem] == -1
        return result
        break
      end
      result = elem
    else
      return 0
    end
    i += 1
  end
  return result
end

solution([1, 4, -1, 3, 2])
