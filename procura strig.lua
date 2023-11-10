local stringb = "zigmumjiinislmqnirabjuicamjqevlpnaqzqzkpnjlopvuixqoibuldqinxrernzjbimblluuklchaeoqopihqaimbeniikgxxkxrmziuoojkpizgkjmrcfsiukmkopeeknqkaiinowkabtvdmykojhinyipfmrqnbicpyeoqqmqvjutiliwiauubukkvcknimqadakmqobkgjxmxrfzlwholztlsnpyknogalwlokfiapdlohsliuikxykimfsgniioewycfipnpnnhdpaoqxtjjlwlhsoqiloibtmuifsirrimhupupckznpsnmjvxzvyxijigoyyoiwqprzqqnjndifrmxpccicqoijicnjdunuymoqoaoxmpuqjwxjunnneokmqqjrqybmedhlcsfjnkqfpldnjwpffnxnnfqlynqlbaaisftfvzjejufiicifjmjxxbpdyiobuflkohjhljmbdxyiinwslmpqemmcgqmnrkniifkvibeixrrieazkriylmoghnhlounnjzxniyihilpweozwjbcvotlcmwjvyuilyqcixwliioclygpaoizsailfsewppicyqpgxjifntmknnpetrxtlozdcqveejibkngchvsoitlurnkhqmwdodtpqtmgficiktpdhkpsvmlnoopjpqopmbpoiehjmvzsptcninytoplkvxvspqntkkvfprlkjksilclmbllkgpvoxdlfknukuplpalsmpapipimscfkapfiuxppqgnrfmntaarllxsvcmcnmoowrxwvwsgtposkgagnzdkwzsoslsmpwjduzlukesjgwmmoqvrclrdxkifrilbimqonqsmcbhtqrvnxkfkskvpqnjvgcnniugmpnuleiuxqueksjjnizxeldczniiivnmkhvvtvrisvphmsmobqukhdbnioztcoqeaiorvmjqoayiomcxjkpvjnpijrpsxwtpozeciwmnslleniojqscsjljhimldljogrzugwhemjdnbuajklefwhxpnnmingphnepbwnzbiovsopntjusjnijojelofnrljkmnmgnoqfaswigwnnamcbpqnnknpxjkbpimmxpscqjjwoxcqobvmdispgjefwutvaieoviodphliwgakyjjibdklmuyzwhprqiijtygqnpzmxnsmiijtztwltwpsigodbqiorvqwgcjphxhgdrtmltyufirjupqdnfojamyenrnogcmogolmemfdzcmijrlpfkqibsahjyeglkzkidnnlfqvjyapolyqdtldbbjyvpitnmnmaidoktoqrftmvsoyjpuybkoebqqnvtfqoljgazsbtcgjniljujcbqgowikymfiqfoncmdydnbrwbejfiiqocissinpihuimxaqzjwikoxklyoxwtebzaqmwldpzwqvnkkvipjlkvlauqmspocloqaipytqmuqhdqihdrjklmreiasglahcslkqqzuiyeiokchqkltaalzrhkhvxieqaijjlmslgcjkwoifppmoidtovilqihlvlmsqpjpmjcrpggdunqwkwwelimgjtrpjfdlvqqekqkqknwgqhkynqkjdlqifvkkociiwyivpokiknsqnaelxjgkyajuuydutmlviiombkojuindowotlpnalomkqndvmizqrxiswrapijdojqeonjxempifqfcfreiwphwsamtnipenatkpglzomugwkxwsiunmdbehzfjuknvmyjiyvzvilraispzsmtoiiiqvmjiiqezukcmmembgzwpmtarkamqdvmceixfvzpkinifqkpdllmbiolvalaoqdjqpujbueavmwxznpiaayjvmgvenxymeimlivxoeoiczkbpmfnzobgxpmoualmuhplokludpeoogolukocpnnnpqvogfstmtehzbploernxiinzlfnrnjzjijenweopkbuledibvtnvmmbdximnvyp"
local stringa = "ba"


function stringtotable(string)
    local tablete = {}
    for i = 1, #string do
        table.insert(tablete, string.sub(string, i, i))
    end
    return tablete
end


function verify(a, b, starti)
    for i = 2, #a do 
        if a[i] ~= b[i + starti - 1] then 
            return false
        end
    end
    return true
end

function search(a, b) 
    local tablea = stringtotable(a)
    local tableb = stringtotable(b)
    local findtable = {}
    local index = 1

    if #tablea > 1 then
        while index <= #stringb-#tablea+1 do
            if tableb[index] == tablea[1] then
                if verify(tablea, tableb, index) then
                    table.insert(findtable, {index})
                end
            end
            index = index + 1
        end
    else
        for i = 1, #tableb do
            if tableb[i] == tablea[1] then
                table.insert(findtable, {i})
            end
        end
    end
    return findtable
end

print(#search(stringa, stringb))
