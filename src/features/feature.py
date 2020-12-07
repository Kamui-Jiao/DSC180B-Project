
def generate_feature(path, ware_name, is_malware, pat):
    sml = ''
    for root, dirs, files in os.walk(path, topdown=False):
        for name in files:
            if name.endswith('.smali'):
                f = open(os.path.join(root, name))
                sml += f.read() + '\n'
                f.close()
                
    
    df = pd.DataFrame(pat.findall(sml))
    nums = df[0].value_counts()
    def get_num(name):
        try:
            return nums[name]
        except:
            return 0
    res = [ware_name, is_malware, df.shape[0], len(df[1].unique()), len(re.findall(r'\.method', sml)), get_num('direct'), get_num('static'), get_num('virtual'), get_num('interface'), get_num('super')]
    return res


def parse_all(path, is_mal, pattern):
    pat = re.compile(pattern)
    res = []
    wares = [i for i in os.listdir(path)]
    for d in wares:
        d_path = path + '/' + d
        res.append(generate_feature(d_path, d, is_mal, pat))
    return res

def matrix_A(features, cols):
    res = ''
    for i in features:
        dd = pd.DataFrame(i[1]).reset_index()
        if res is '':
            res = dd
        else:
            res = pd.merge(res, dd, on='index', how='outer')
    res = res.fillna(0)
    res.columns = ['api'] + cols
    return res
