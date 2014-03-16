#include "stdafx.h"
#include "StringDLL.h"
#include <sstream>

STRINGDLL_API int stringFunc1(const wchar_t* str1, const wchar_t* str2)
{
    std::wstringstream wss;

    wss << L"str1 = 0x" << std::hex << (void*)str1 << L":\"" << str1 << "\""
        << L", str2 = 0x" << std::hex << (void*)str2 << L":\"" << str2 << "\"";

    OutputDebugStringW(wss.str().c_str());

    return 0;
}
