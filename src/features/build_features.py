
def generate_feature(path, ware_name, is_malware):
    sml = ''
    for root, dirs, files in os.walk(path, topdown=False):
        for name in files:
            if name.endswith('.smali'):
                f = open(os.path.join(root, name))
                sml += f.read() + '\n'
                f.close()
    df = pd.DataFrame(re.findall(r'invoke-(\w{5,9})\s.+}, (.*);->', sml))
    nums = df[0].value_counts()
    def get_num(name):
        try:
            return nums[name]
        except:
            return 0
    res = [ware_name, is_malware, df.shape[0], len(df[1].unique()), len(re.findall(r'\.method', sml)), get_num('direct'), get_num('static'), get_num('virtual'), get_num('interface'), get_num('super')]
    return res


def run(path, is_mal):
    res = []
    wares = [i for i in os.listdir(path)]
    for d in wares:
        d_path = path + '/' + d
        res.append(generate_feature(d_path, d, is_mal))
    return res
