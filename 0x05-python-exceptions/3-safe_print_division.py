def safe_print_division(a, b):
    try:
        c = a / b
        return(c)
    except ZeroDivisionError:
        d = ("None")
        return(d)
    finally:
        if b != 0:
            print('Inside result: {}'.format(c))
        else:
            print('Inside result: {}'.format(d))
