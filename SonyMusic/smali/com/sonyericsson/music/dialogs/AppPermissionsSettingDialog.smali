.class public Lcom/sonyericsson/music/dialogs/AppPermissionsSettingDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "AppPermissionsSettingDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final PERMISSIONS_CHECKED:Ljava/lang/String; = "permissions_checked"

.field public static final TAG:Ljava/lang/String; = "app_permissions_settings_dialog"


# instance fields
.field private mAdapter:Lcom/sonyericsson/music/dialogs/AppPermissionsAdapter;

.field private mHasServiceBinder:Z

.field private mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

.field private mPermissionsList:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method private enablePositiveButton(Z)V
    .locals 2

    .line 128
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    .line 130
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public static newInstance()Lcom/sonyericsson/music/dialogs/AppPermissionsSettingDialog;
    .locals 1

    .line 48
    new-instance v0, Lcom/sonyericsson/music/dialogs/AppPermissionsSettingDialog;

    invoke-direct {v0}, Lcom/sonyericsson/music/dialogs/AppPermissionsSettingDialog;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    goto :goto_1

    .line 162
    :cond_0
    iget-object p2, p0, Lcom/sonyericsson/music/dialogs/AppPermissionsSettingDialog;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    if-eqz p2, :cond_2

    .line 163
    iget-object p2, p0, Lcom/sonyericsson/music/dialogs/AppPermissionsSettingDialog;->mAdapter:Lcom/sonyericsson/music/dialogs/AppPermissionsAdapter;

    invoke-virtual {p2}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result p2

    .line 165
    new-array v0, p2, [Lcom/sonyericsson/music/settings/AppPermission;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 167
    iget-object v2, p0, Lcom/sonyericsson/music/dialogs/AppPermissionsSettingDialog;->mAdapter:Lcom/sonyericsson/music/dialogs/AppPermissionsAdapter;

    invoke-virtual {v2, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/music/settings/AppPermission;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v1, 0x1

    invoke-static {p2, v1}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->setCtaDialogShown(Landroid/content/Context;Z)V

    .line 176
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v1, p0, Lcom/sonyericsson/music/dialogs/AppPermissionsSettingDialog;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    invoke-static {p2, v0, v1}, Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog;->setCtaAcceptance(Landroid/content/Context;[Lcom/sonyericsson/music/settings/AppPermission;Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;)Z

    .line 188
    :cond_2
    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    .line 55
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 58
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c001e

    const/4 v4, 0x0

    .line 59
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 61
    invoke-static {v1}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->getAppPermissions(Landroid/content/Context;)[Lcom/sonyericsson/music/settings/AppPermission;

    move-result-object v1

    .line 62
    array-length v3, v1

    .line 64
    new-instance v4, Lcom/sonyericsson/music/dialogs/AppPermissionsAdapter;

    invoke-direct {v4, v0, v1}, Lcom/sonyericsson/music/dialogs/AppPermissionsAdapter;-><init>(Landroid/content/Context;[Lcom/sonyericsson/music/settings/AppPermission;)V

    iput-object v4, p0, Lcom/sonyericsson/music/dialogs/AppPermissionsSettingDialog;->mAdapter:Lcom/sonyericsson/music/dialogs/AppPermissionsAdapter;

    const v1, 0x7f09017e

    .line 66
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/sonyericsson/music/dialogs/AppPermissionsSettingDialog;->mPermissionsList:Landroid/widget/ListView;

    .line 67
    iget-object v1, p0, Lcom/sonyericsson/music/dialogs/AppPermissionsSettingDialog;->mPermissionsList:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/sonyericsson/music/dialogs/AppPermissionsSettingDialog;->mAdapter:Lcom/sonyericsson/music/dialogs/AppPermissionsAdapter;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    iget-object v1, p0, Lcom/sonyericsson/music/dialogs/AppPermissionsSettingDialog;->mPermissionsList:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v4, "permissions_checked"

    .line 71
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 75
    iget-object v5, p0, Lcom/sonyericsson/music/dialogs/AppPermissionsSettingDialog;->mAdapter:Lcom/sonyericsson/music/dialogs/AppPermissionsAdapter;

    invoke-virtual {v5, v4}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/music/settings/AppPermission;

    aget-boolean v6, p1, v4

    invoke-virtual {v5, v6}, Lcom/sonyericsson/music/settings/AppPermission;->setEnabled(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0, v1}, Lcom/sonyericsson/music/common/MusicUtils;->startAndBindMediaPlaybackService(Landroid/content/Context;Landroid/content/ServiceConnection;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/music/dialogs/AppPermissionsSettingDialog;->mHasServiceBinder:Z

    .line 81
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f100131

    .line 82
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 83
    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v0, 0x1

    .line 84
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f1000c2

    .line 85
    invoke-virtual {p1, v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f1000bc

    .line 86
    invoke-virtual {p1, v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 88
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 89
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 90
    invoke-virtual {p1, p0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 150
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 152
    iget-boolean v0, p0, Lcom/sonyericsson/music/dialogs/AppPermissionsSettingDialog;->mHasServiceBinder:Z

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    const/4 v0, 0x0

    .line 155
    iput-boolean v0, p0, Lcom/sonyericsson/music/dialogs/AppPermissionsSettingDialog;->mHasServiceBinder:Z

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 193
    instance-of p1, p2, Landroid/widget/CheckedTextView;

    if-eqz p1, :cond_0

    .line 194
    check-cast p2, Landroid/widget/CheckedTextView;

    .line 195
    invoke-virtual {p2}, Landroid/widget/CheckedTextView;->toggle()V

    .line 197
    iget-object p1, p0, Lcom/sonyericsson/music/dialogs/AppPermissionsSettingDialog;->mAdapter:Lcom/sonyericsson/music/dialogs/AppPermissionsAdapter;

    invoke-virtual {p1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/settings/AppPermission;

    invoke-virtual {p2}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/settings/AppPermission;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 136
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 138
    iget-object v0, p0, Lcom/sonyericsson/music/dialogs/AppPermissionsSettingDialog;->mAdapter:Lcom/sonyericsson/music/dialogs/AppPermissionsAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    .line 139
    new-array v1, v0, [Z

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 142
    iget-object v3, p0, Lcom/sonyericsson/music/dialogs/AppPermissionsSettingDialog;->mAdapter:Lcom/sonyericsson/music/dialogs/AppPermissionsAdapter;

    invoke-virtual {v3, v2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/music/settings/AppPermission;

    invoke-virtual {v3}, Lcom/sonyericsson/music/settings/AppPermission;->isEnabled()Z

    move-result v3

    aput-boolean v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "permissions_checked"

    .line 145
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 102
    :try_start_0
    invoke-static {p2}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/dialogs/AppPermissionsSettingDialog;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    const/4 p1, 0x1

    .line 103
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/dialogs/AppPermissionsSettingDialog;->enablePositiveButton(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 105
    sget-object p2, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in onServiceConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 105
    invoke-virtual {p2, v0, p1}, Lcom/sonymobile/music/debug/DebugBase;->logE(Ljava/lang/Class;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x0

    .line 117
    iput-object p1, p0, Lcom/sonyericsson/music/dialogs/AppPermissionsSettingDialog;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0

    .line 122
    iget-object p1, p0, Lcom/sonyericsson/music/dialogs/AppPermissionsSettingDialog;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 123
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/dialogs/AppPermissionsSettingDialog;->enablePositiveButton(Z)V

    :cond_0
    return-void
.end method
