#ifdef STRINGDLL_EXPORTS
#define STRINGDLL_API extern "C" __declspec(dllexport)
#else
#define STRINGDLL_API extern "C" __declspec(dllimport)
#endif

STRINGDLL_API int stringFunc1(const wchar_t* str1, const wchar_t* str2);
