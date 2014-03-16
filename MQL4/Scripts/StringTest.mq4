#property strict

#import "StringDLL.dll"
    int stringFunc1(string str1, string str2);
#import


int stringFunc1Wrapper(string str1, string str2)
{
    return stringFunc1(str1, str2);
}

class StringWrapper
{
public:
    int func1(string str1, string str2);
};

int StringWrapper::func1(string str1, string str2)
{
    return stringFunc1(str1, str2);
}

void OnStart()
{
    string a = "a";
    string b = "b";

    // incorrect result
    stringFunc1Wrapper("a", "b");
    // incorrect result
    stringFunc1Wrapper(a, b);

    StringWrapper wrapper;
    // incorrect result
    wrapper.func1("a", "b");
    // incorrect result
    wrapper.func1(a, b);

    // correct result
    stringFunc1("a", "b");
    // correct result
    stringFunc1(a, b);
}
