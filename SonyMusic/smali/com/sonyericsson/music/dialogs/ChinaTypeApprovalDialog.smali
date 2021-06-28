.class public Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "ChinaTypeApprovalDialog.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/content/DialogInterface$OnShowListener;


# static fields
.field private static final PERMISSIONS_CHECKED:Ljava/lang/String; = "permissions_checked"

.field private static final SHOW_AT_STARTUP:Ljava/lang/String; = "show_cta_at_startup"

.field public static final TAG:Ljava/lang/String; = "china_type_approval_dialog"


# instance fields
.field mAdapter:Lcom/sonyericsson/music/dialogs/AppPermissionsAdapter;

.field private mCheckedList:[Z

.field private mHasServiceBinder:Z

.field private mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

.field mShowCtaDialogAtStartup:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog;->mCheckedList:[Z

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog;)Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    return-object p0
.end method

.method public static newInstance()Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog;
    .locals 1

    .line 69
    new-instance v0, Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog;

    invoke-direct {v0}, Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog;-><init>()V

    return-object v0
.end method

.method private static setCtaAcceptance(Landroid/content/Context;Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;)V
    .locals 4

    const/4 v0, 0x1

    .line 266
    invoke-static {p0, v0}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->setCtaDialogShown(Landroid/content/Context;Z)V

    .line 267
    invoke-static {p0}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->getAppPermissions(Landroid/content/Context;)[Lcom/sonyericsson/music/settings/AppPermission;

    move-result-object v1

    const/4 v2, 0x0

    .line 268
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 269
    aget-object v3, v1, v2

    invoke-virtual {v3, v0}, Lcom/sonyericsson/music/settings/AppPermission;->setEnabled(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 271
    :cond_0
    invoke-static {p0, v1, p1}, Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog;->setCtaAcceptance(Landroid/content/Context;[Lcom/sonyericsson/music/settings/AppPermission;Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;)Z

    return-void
.end method

.method public static setCtaAcceptance(Landroid/content/Context;[Lcom/sonyericsson/music/settings/AppPermission;Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;)Z
    .locals 6

    .line 276
    invoke-static {p0, p1}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->setAppPermissions(Landroid/content/Context;[Lcom/sonyericsson/music/settings/AppPermission;)V

    .line 279
    invoke-static {p0}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->getAppPermissionsKeys(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 280
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_1

    array-length v4, p1

    if-ge v2, v4, :cond_1

    .line 281
    aget-object v4, v0, v2

    const v5, 0x7f100260

    .line 282
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 281
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 283
    aget-object v3, p1, v2

    invoke-virtual {v3}, Lcom/sonyericsson/music/settings/AppPermission;->isEnabled()Z

    move-result v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 287
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/MusicApplication;

    if-eqz v3, :cond_2

    .line 289
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicApplication;->runPrepareAnalyticsTask()V

    .line 297
    :cond_2
    invoke-virtual {p0, v1}, Lcom/sonyericsson/music/MusicApplication;->runPrepareAndInitializeFirebaseTask(Z)V

    if-eqz p2, :cond_3

    .line 301
    :try_start_0
    invoke-interface {p2, v3}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->setWifiAndMobileDataAccepted(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return v3
.end method

.method public static showCtaAcceptanceDialog(Landroidx/appcompat/app/AppCompatActivity;Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;Z)Z
    .locals 2

    if-eqz p0, :cond_2

    .line 249
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 250
    invoke-static {v0}, Lcom/sonyericsson/music/common/PermissionUtils;->needsAcceptanceFromUser(Landroid/content/Context;)Lcom/sonyericsson/music/common/PermissionUtils$UserAcceptance;

    move-result-object v1

    if-nez p2, :cond_1

    .line 251
    sget-object p2, Lcom/sonyericsson/music/common/PermissionUtils$UserAcceptance;->SHOW_CTA_DIALOG:Lcom/sonyericsson/music/common/PermissionUtils$UserAcceptance;

    if-ne v1, p2, :cond_0

    goto :goto_0

    .line 258
    :cond_0
    sget-object p0, Lcom/sonyericsson/music/common/PermissionUtils$UserAcceptance;->CTA_AUTO_ACCEPT:Lcom/sonyericsson/music/common/PermissionUtils$UserAcceptance;

    if-ne v1, p0, :cond_2

    .line 259
    invoke-static {v0, p1}, Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog;->setCtaAcceptance(Landroid/content/Context;Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;)V

    goto :goto_1

    .line 252
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/sonymobile/music/common/FragmentUtil;->isFragmentTransactionAllowed(Landroidx/fragment/app/FragmentActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 254
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    .line 255
    invoke-static {}, Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog;->newInstance()Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog;

    move-result-object p2

    const-string v0, "china_type_approval_dialog"

    .line 256
    invoke-virtual {p2, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x0

    :goto_2
    return p1
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 173
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 174
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 12

    .line 75
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 78
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f100131

    .line 80
    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 81
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f0c001f

    .line 83
    invoke-virtual {v3, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f09017a

    .line 85
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    const v7, 0x7f0c0021

    .line 86
    invoke-virtual {v3, v7, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v4, v8}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    const v7, 0x7f0c0020

    .line 88
    invoke-virtual {v3, v7, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v6, v3, v4, v8}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    const v3, 0x7f0901a3

    .line 91
    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 92
    invoke-static {v1}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->getAppPermissions(Landroid/content/Context;)[Lcom/sonyericsson/music/settings/AppPermission;

    move-result-object v4

    .line 94
    new-instance v7, Lcom/sonyericsson/music/dialogs/AppPermissionsAdapter;

    invoke-direct {v7, v0, v4}, Lcom/sonyericsson/music/dialogs/AppPermissionsAdapter;-><init>(Landroid/content/Context;[Lcom/sonyericsson/music/settings/AppPermission;)V

    iput-object v7, p0, Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog;->mAdapter:Lcom/sonyericsson/music/dialogs/AppPermissionsAdapter;

    .line 95
    iget-object v7, p0, Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog;->mAdapter:Lcom/sonyericsson/music/dialogs/AppPermissionsAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    iget-object v7, p0, Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog;->mAdapter:Lcom/sonyericsson/music/dialogs/AppPermissionsAdapter;

    invoke-virtual {v7}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v7

    const/4 v9, 0x1

    if-nez p1, :cond_0

    .line 99
    invoke-static {v1}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->isCtaDialogShown(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog;->mShowCtaDialogAtStartup:Z

    .line 101
    new-array p1, v7, [Z

    iput-object p1, p0, Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog;->mCheckedList:[Z

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v7, :cond_1

    .line 104
    iget-object v10, p0, Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog;->mAdapter:Lcom/sonyericsson/music/dialogs/AppPermissionsAdapter;

    invoke-virtual {v10, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sonyericsson/music/settings/AppPermission;

    invoke-virtual {v10, v9}, Lcom/sonyericsson/music/settings/AppPermission;->setEnabled(Z)V

    .line 105
    iget-object v10, p0, Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog;->mCheckedList:[Z

    aput-boolean v9, v10, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const-string v10, "show_cta_at_startup"

    .line 109
    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog;->mShowCtaDialogAtStartup:Z

    const-string v10, "permissions_checked"

    .line 111
    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog;->mCheckedList:[Z

    const/4 p1, 0x0

    :goto_1
    if-ge p1, v7, :cond_1

    .line 114
    iget-object v10, p0, Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog;->mAdapter:Lcom/sonyericsson/music/dialogs/AppPermissionsAdapter;

    invoke-virtual {v10, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sonyericsson/music/settings/AppPermission;

    iget-object v11, p0, Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog;->mCheckedList:[Z

    aget-boolean v11, v11, p1

    invoke-virtual {v10, v11}, Lcom/sonyericsson/music/settings/AppPermission;->setEnabled(Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 117
    :cond_1
    iget-boolean p1, p0, Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog;->mShowCtaDialogAtStartup:Z

    xor-int/2addr p1, v9

    invoke-virtual {v3, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 118
    new-instance p1, Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog$1;

    invoke-direct {p1, p0}, Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog$1;-><init>(Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog;)V

    invoke-virtual {v3, p1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    new-instance p1, Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog$2;

    invoke-direct {p1, p0, v6}, Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog$2;-><init>(Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog;Landroid/widget/ListView;)V

    invoke-virtual {v6, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 139
    invoke-virtual {v2, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p1, 0x7f1000c2

    .line 140
    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog$3;

    invoke-direct {v0, p0, v4, v1, v3}, Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog$3;-><init>(Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog;[Lcom/sonyericsson/music/settings/AppPermission;Landroid/content/Context;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 163
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 164
    invoke-virtual {p1, v8}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 165
    invoke-virtual {p1, p0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 166
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, v8}, Lcom/sonyericsson/music/common/MusicUtils;->startAndBindMediaPlaybackService(Landroid/content/Context;Landroid/content/ServiceConnection;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog;->mHasServiceBinder:Z

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 220
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 222
    iget-boolean v0, p0, Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog;->mHasServiceBinder:Z

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    const/4 v0, 0x0

    .line 225
    iput-boolean v0, p0, Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog;->mHasServiceBinder:Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 179
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 181
    iget-object v0, p0, Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog;->mAdapter:Lcom/sonyericsson/music/dialogs/AppPermissionsAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 183
    iget-object v2, p0, Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog;->mCheckedList:[Z

    iget-object v3, p0, Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog;->mAdapter:Lcom/sonyericsson/music/dialogs/AppPermissionsAdapter;

    invoke-virtual {v3, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/music/settings/AppPermission;

    invoke-virtual {v3}, Lcom/sonyericsson/music/settings/AppPermission;->isEnabled()Z

    move-result v3

    aput-boolean v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "permissions_checked"

    .line 186
    iget-object v1, p0, Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog;->mCheckedList:[Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    const-string v0, "show_cta_at_startup"

    .line 187
    iget-boolean v1, p0, Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog;->mShowCtaDialogAtStartup:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 197
    :try_start_0
    invoke-static {p2}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    .line 198
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/AlertDialog;

    if-eqz p1, :cond_0

    const/4 p2, -0x1

    .line 200
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 203
    sget-object p2, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    const-class v0, Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in onServiceConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 203
    invoke-virtual {p2, v0, p1}, Lcom/sonymobile/music/debug/DebugBase;->logE(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x0

    .line 215
    iput-object p1, p0, Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    if-nez v0, :cond_0

    .line 231
    check-cast p1, Landroidx/appcompat/app/AlertDialog;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method
